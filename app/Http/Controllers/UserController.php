<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Spatie\Permission\Models\Role;
use Illuminate\Http\File;

use Image;
// use File;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();

        return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        $roles = Role::all()->pluck('name', 'id');
        $user_roles = null;

        return view('admin.users.create', compact('roles', 'user_roles'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'password' => 'required|min:8',
            'email' => 'required|email',
            'role' => 'required'
        ]);

        $user = new User();
        $user->username = $request->input('username');
        $user->type = 3;
        $user->password = bcrypt($request->input('password'));
        $user->email = $request->input('email');

        // var_dump($path);
        // die();
        // if ($request->hasFile('avatar') && $request->file('avatar')->isvalid()) {
            $path = config('central.path.avatars');
            
            $fileext = $request->file('avatar')->extension();
            // var_dump($path);
            // die();
            
            $filename = uniqid("avatars-") . '.' . $fileext;


            //Real File
            $filepath = $request->file('avatar')->storeAs($path, $filename, 'local');

            //Avatar File
            $realpath = storage_path('app/' . $filepath);
            Image::make($realpath)
                ->resize(null, 100, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path(config('central.path.avatars') . '/' . $filename));

            $user->avatar = $filename;
        // }

        if ($user->save()) {
            toast()->success('Berhasil menambahkan data user');
            $user->assignRole($request->input('role'));
            return redirect()->route('users.index');
        } else {
            toast()->error('Data user tidak dapat ditambahkan');
            return redirect()->route('users.create');
        }
    }

    public function show($id)
    {
        $user = User::find($id);
        $roles = $user->getRoleNames();
        return view('admin.users.show', compact('user', 'roles'));
    }

    public function edit($id)
    {
        $user = User::find($id);
        if (empty($user->roles)) {
            $user_roles = $user->roles->first()->id;
        } else {
            $user_roles = null;
        }
        $roles = Role::all()->pluck('name', 'id');

        return view('admin.users.edit', compact('user', 'roles', 'user_roles'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'username' => 'required',
            'email' => 'required|email',
            'role' => 'required'
        ]);

        $user = User::find($id);
        $user->username = $request->input('username');
        $user->type = 3;
        $user->password = bcrypt($request->input('password'));
        $user->email = $request->input('email');

        if ($request->hasFile('avatar') && $request->file('avatar')->isvalid()) {
            $oldFile = $user->avatar;

            $path = config('central.path.avatars');

            $fileext = $request->file('avatar')->extension();
            $filename = uniqid("avatars-") . '.' . $fileext;

            //Real File
            $filepath = $request->file('avatar')->storeAs($path, $filename, 'local');

            //Avatar File
            $realpath = storage_path('app/' . $filepath);
            Image::make($realpath)
                ->resize(null, 100, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path(config('central.path.avatars') . '/' . $filename));

            $user->avatar = $filename;

            //Hapus avatar & Photo
            File::delete($realpath.'/' . $oldFile);
            File::delete(storage_path($path) . '/' . $oldFile);
        }

        if ($user->save()) {
            toast()->success('Berhasil memperbaharui data user');
            $user->syncRoles([$request->input('role')]);
            return redirect()->route('users.index');
        } else {
            toast()->error('Data user tidak dapat diperbaharui');
            return redirect()->route('users.edit', ['id' => $user->id]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        toast()->success('Data user berhasil dihapus');

        return redirect()->route('users.index');
    }

    public function activate($id)
    {
        $user = User::find($id);
        $user->status = 1;
        if ($user->save()) {
            toast()->success('Berhasil mengaktifkan user '.$user->username);
        } else {
            toast()->danger('Gagal mengaktifkan user '.$user->username);
        }
        return redirect()->route('users.index');
    }

    public function deactivate($id)
    {
        $user = User::find($id);
        $user->status = 0;
        if ($user->save()) {
            toast()->success('Berhasil menonaktifkan user ' . $user->username);
        } else {
            toast()->danger('Gagal menonaktifkan user ' . $user->username);
        }
        return redirect()->route('users.index');
    }
}
