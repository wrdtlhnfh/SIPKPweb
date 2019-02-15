<?php
namespace App\Http\Controllers;

use App\Dosen;
use App\MahasiswaKP;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use App\User;
use \DB;
use App\KegiatanHarian;


use Image;
use File;

class DosenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()->can('kelola_dosen')){
            $dosens = Dosen::paginate(10);
            return view('admin.dosen.index_dosen', compact('dosens'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()->can('kelola_dosen')){
            $email = $username = null;
            return view('admin.dosen.create_dosen', compact('email', 'username'));
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          $request->validate([
            'email' => 'required|email',
            'nip'       => 'required|unique:dosen',
            'nidn'       => 'required',
            'nama'      => 'required',
            'password' => 'required|min:8',
            
        ]);

        $user = new User();
        $user->username = $request->input('nip');
        $user->type = 3;
        $user->password = bcrypt($request->input('password'));
        $user->email = $request->input('email');

        //role type
        $role = Role::find($user->type);

        $user->save();

        $dosen                  = new Dosen();
        $dosen->id              = $user->id;
        $dosen->nama            = $request->input('nama');
        $dosen->nip            = $request->input('nip');
        $dosen->nidn             = $request->input('nidn');
        $dosen->gelar_depan       = $request->input('gelar_depan');
        $dosen->gelar_belakang       = $request->input('gelar_belakang');
        $dosen->tempat_lahir    = $request->input('tempat_lahir');
        $dosen->tanggal_lahir   = $request->input('tanggal_lahir');
        $dosen->jenis_kelamin   = $request->input('jenis_kelamin');
        $dosen->nohp            = $request->input('nohp');
       

        if($dosen->save())
        {
            toast()->success('Data dosen berhasil ditambahkan');
            $user->assignRole($role);
            return redirect()->route('dosen.index');
        }
        else
        {
            toast()->error('Data dosen gagal ditambahkan');
            return redirect()->route('dosen.create');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Dosen  $dosen
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(Auth::user()->can('kelola_dosen')){
            $dosen = Dosen::find($id);

            $user = User::find($id);
                
            $roles = $user->getRoleNames();


            //jenis_kelamin
            if ($dosen->jenis_kelamin == 1)
            {
                $jenis_kelamin = 'Laki-laki';
            }
            else if($dosen->jenis_kelamin == 2)
            {
                $jenis_kelamin = 'Perempuan';
            }
            else
            {
                $jenis_kelamin = null;
            }

            
            return view('admin.dosen.show_dosen', compact('dosen', 'roles', 'jenis_kelamin'));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Dosen  $dosen
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::user()->can('kelola_dosen')){
            $dosen = Dosen::find($id);
            $user = User::find($id);
            // if(empty($user->roles))
            // {
            //     $user_roles = $user_roles->first()->id;
            // }
            // else
            // {
            //     $user_roles = null;
            // }
            // $roles = Role::all()->pluck('name', 'id');'roles', 'user_roles',


            if(!empty($dosen->user['email']))
            {
                $email = $dosen->user['email'];
            }
            else
            {
                $email = null;
            }

            if(!empty($dosen->user['username']))
            {
                $username = $dosen->user['username'];
            }
            else
            {
                $username = null;
            }

            return view('admin.dosen.edit_dosen', compact('dosen', 'email', 'username'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Dosen  $dosen
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
          $request->validate([
            'email' => 'required|email',
            'nip'       => 'required',
            'nidn'       => 'required',
            'nama'      => 'required',
   
            
        ]);

        $user = User::find($id);
        $user->username = $request->input('nip');
        $user->type = 3;
      
        $user->email = $request->input('email');

        //role type
        $role = Role::find($user->type);


       
        
        $user->save();

        $dosen                  = dosen::find($id);
        $dosen->nama            = $request->input('nama');
        $dosen->nip            = $request->input('nip');
        $dosen->nidn           = $request->input('nidn');
        $dosen->gelar_depan        = $request->input('gelar_depan');
        $dosen->gelar_belakang        = $request->input('gelar_belakang');
        $dosen->tempat_lahir    = $request->input('tempat_lahir');
        $dosen->tanggal_lahir   = $request->input('tanggal_lahir');
        $dosen->jenis_kelamin   = $request->input('jenis_kelamin');
        $dosen->nohp            = $request->input('nohp');
        

        if($dosen->save())                    
        {
            toast()->success('Data dosen berhasil diperbaharui');
            $user->syncRoles($role);
            return redirect()->route('dosen.index');
        }
        else
        {
            toast()->error('Data dosen gagal diperbaharui');
            return redirect()->route('dosen.edit', ['id' => $dosen->id]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Dosen  $dosen
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dosen = Dosen::find($id);
        $dosen->delete();
        $user = User::find($id);
        

        $user->delete();
        toast()->success('Data dosen berhasil dihapus');

        return redirect()->route('dosen.index');
    }

    public function jumlah_mhs(){
        $user = Auth::user();
        $dosen = Dosen::find($user->id);
        echo $dosen->mhs_bimbingan->count();
    }

    public function harian_mahasiswa($id){
        // $kegiatan_harians = KegiatanHarian::paginate(10);
        $mk=MahasiswaKP::find($id);
        $harian_mahasiswas = KegiatanHarian::where('mhs_kp_id',$id)->paginate(10);
        return view('dosen.kegiatan_harian.index',compact('harian_mahasiswas','mk'));
    }

    public function edit_balasan($id){
        $harian = KegiatanHarian::find($id);
        return view('dosen.kegiatan_harian.edit',compact('harian'));
    }

    public function update_balasan(Request $request){
     

        $harian = KegiatanHarian::find($request->id);

        $harian->catatan = $request->catatan;
        $harian->save();

        return redirect('harian_mahasiswa/'.$harian->mhs_kp_id);
    }

    public function input_nilai($id){
        if(Auth::user()->can('sidebar_mhs_bimbingan')){
            $mhs = MahasiswaKP::find($id);
            return view('dosen.nilai_kp',compact('mhs'));
        } else {
            return redirect('/');
        }
    }
 
    public function update_nilai_kp(Request $request){
        $mhs = MahasiswaKP::find($request->id_kp);
        $mhs->nilai_kp = $request->nilai;
        $mhs->status = 8;
        $mhs->save();
        return redirect('mahasiswa_kp_bimbingan');
    }
}
