<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Hash;
use App\MahasiswaKP;
use App\KegiatanHarian;
use App\Mahasiswa;
use \Carbon\Carbon;



class MobileController extends Controller
{
    public function login(Request $request){
        $username = $request->username;
        $password = $request->password;
        $user = User::where('username',$username)->where('type',2)->first();
        $data = array();

        if($user){
            if (Hash::check($password, $user->password)){
                $data['response_code'] = 200;
                $data['message'] = 'Login Berhasil';
                $data['id'] = $user->id;
                $data['username'] = $user->username;
                $data['nim'] = $user->mahasiswa->nim;
                $data['image'] = url('image/profile-pict/'.$user->avatar);

                $mhs_kp = MahasiswaKP::where('mahasiswa_id',$user->id)->orderBy('id','desc')->first(); 
                if($mhs_kp){
                    $data['mhs_kp_id'] = $mhs_kp->id;
                    $data['status_kp'] = $mhs_kp->status;
                    $data['status_proposal'] = $mhs_kp->proposal->status_proposal;
                } else {
                    $data['mhs_kp_id'] = "";
                    $data['status_kp'] = "";
                    $data['status_proposal'] = "";
                }
            } else {
                $data['response_code'] = 400;
                $data['message'] = 'Login Gagal';
                $data['id'] = '';
                $data['image'] = '';
                $data['mhs_kp_id'] = "";
                $data['status_kp'] = "";
                $data['status_proposal'] = "";
                $data['nim'] = "";
            }
        } else {
            $data['response_code'] = 400;
            $data['message'] = 'Login Gagal';
            $data['id'] = '';
            $data['image'] = '';
            $data['mhs_kp_id'] = "";
            $data['status_kp'] = "";
            $data['status_proposal'] = "";
            $data['nim'] = "";    
        }

        echo json_encode($data);

    }

    public function store_harian(Request $request){
        $cek_harian = KegiatanHarian::where('mhs_kp_id',$request->mhs_kp_id)
                        ->where('hari_tanggal',$request->tanggal)->get();
        if($cek_harian->count() == 0){
            $now = Carbon::now();
            $mhs_kp = MahasiswaKP::find($request->mhs_kp_id);
            $arrKP = explode("-", $mhs_kp->mulai_kp);
            $tgl_mulai_kp = Carbon::create($arrKP[0],$arrKP[1],$arrKP[2],0,0,0);
            if($now->greaterThan($tgl_mulai_kp)){
                $harian = new KegiatanHarian();
                $harian->mhs_kp_id = $request->mhs_kp_id;
                $harian->hari_tanggal = $request->tanggal;
                $harian->kegiatan = $request->kegiatan;






                $data = array();
                if($harian->save()){
                    $data['response_code'] = 200;
                    $data['message'] = 'Insert Data Berhasil';
                } else {
                    $data['response_code'] = 400;
                    $data['message'] = 'Insert Data Gagal';
                }
            } else {
                $data['response_code'] = 400;
                $data['message'] = 'Anda Belum Memulai KP';
            }
        } else {
            $data['response_code'] = 400;
            $data['message'] = 'Kegiatan Harian Sudah Ada';
        }

        echo json_encode($data);
    }

    public function profil($id_mhs){
        $mhs = Mahasiswa::find($id_mhs);
        $data = array();
        $data['nama'] = "";
        $data['instansi'] = "";
        $data['pembimbing'] = "";
        $data['mulai_kp'] = "";
        $data['selesai_kp'] = "";
        if($mhs){
            $data['response_code'] = 200;   
            $data['message'] = "Data Ditemukan";    
            
            $data['nama'] = $mhs->nama;

            $mhs_kp = MahasiswaKP::where('mahasiswa_id',$id_mhs)->orderBy('id','desc')->first(); 
            if($mhs_kp){
                if($mhs_kp->proposal->instansi){
                    $data['instansi'] = $mhs_kp->proposal->instansi->nama;
                }
                if($mhs_kp->dosbing){
                    $data['pembimbing'] = $mhs_kp->dosbing->nama;
                }
                $data['mulai_kp'] = $mhs_kp->mulai_kp;
                $data['selesai_kp'] = $mhs_kp->selesai_kp;
            }
        } else {
            $data['response_code'] = 400;   
            $data['message'] = "Data Tidak Ditemukan";
        }

        echo json_encode($data);
    }

    public function harian_mahasiswa($mhs_kp_id){
        $data = array();
        $data_harian = array();
        $harian = KegiatanHarian::where('mhs_kp_id',$mhs_kp_id)->get();
        if(count($harian) > 0){
            $data['response_code'] = 200;
            $data['message'] = "Data Ditemukan";

            foreach ($harian as $h) {
                $data_array = array();
                $data_array['id'] = $h->id;
                $data_array['tanggal'] = $h->hari_tanggal;
                $data_array['kegiatan'] = $h->kegiatan;
                $data_array['catatan'] = $h->catatan;
                array_push($data_harian, $data_array);
            }
            $data['harian'] = $data_harian;
        } else {
            $data['response_code'] = 400;
            $data['message'] = "Data Tidak Ditemukan";
            $data['harian'] = $data_harian;

        }
        echo json_encode($data);
    }
}
