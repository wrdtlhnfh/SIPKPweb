<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\File;
use Image;

class ProfileController extends Controller
{
    public function show()
    {
        $user = Auth::user();
        $tipe = config('reference.user_type');
        return view('profile.profile', compact('user', 'tipe'));
    }

    public function edit()
    {
        $user = Auth::user();
        $tipe = config('reference.user_type');

        return view('profile.edit', compact('user'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email'
        ]);
        $user = Auth::user();
        $user->email = $request->input('email');
        if ($user->save()) {
            toast()->success('Berhasil mengubah data profil pribadi Anda');
        }

        $biodata = Auth::user()->biodata;
        if (isset($biodata)) {
            $biodata->nama = $request->input('nama');
            $biodata->save();
        }

        return redirect()->route('profile.show');
    }

    public function editpassword()
    {
        $user = Auth::user();
        if (empty($user->avatar)) {
            $user->avatar = 'person.png';
        }
        return view('profile.password', compact('user'));
    }

    public function storepassword(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|min:8',
            'confirm_password' => 'required|same:new_password'
        ]);

        $user = Auth::user();
        if (Hash::check($request->input('old_password'), $user->password)) {
            $user->password = bcrypt($request->input('new_password'));
            $user->save();

            toast()->success("Berhasil memperbaharui password Anda");

            return redirect()->route('profile.show');
        } else {
            toast()->error("Gagal memperbaharui password Anda");
        }
        return redirect()->route('password.show');
    }

    public function profilePicture(Request $request)
    {
        $request->validate([
            'photo' => 'required|image|mimes:jpg,png,jpeg,gif'
        ]);

        if ($request->hasFile('photo') && $request->photo->isValid()) {
            $path = config('central.path.avatars');

            $user = Auth::user();
            $oldfile = $user->avatar;

            $fileext = $request->photo->extension();
            $filename = uniqid("avatars-").'.'.$fileext;

            //Real File
            $filepath = $request->file('photo')->storeAs($path, $filename, 'local');
            //Avatar File
            $realpath = storage_path('app/'.$filepath);
            $img = Image::make($realpath)
                ->resize(null, 100, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path(config('central.path.avatars').'/'.$filename));

            $user->avatar = $filename;
            if ($user->save()) {
                toast()->success("Berhasil mengganti foto Anda");
                if ($filename != $oldfile) {
                    File::delete(storage_path('app'.'/'. $path . '/' . $oldfile));
                    File::delete(public_path($path . '/' . $oldfile));
                }
            } else {
                toast()->danger("Oh...snap... Gagal mengganti foto Anda");
            }
        }
        return redirect()->back();
    }
}
