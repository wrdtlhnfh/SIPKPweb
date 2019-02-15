<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MahasiswaKP;
use App\Mahasiswa;
use Auth;
use App\Proposal;
use \Carbon\Carbon;
use \DB;

class LaporanController extends Controller
{
    public function daftar_surat_tugas(){
        if(Auth::user()->can('surat_tugas')) {
            $MahasiswaKP = \DB::table('mahasiswa_kp')
                    ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                    ->join('instansi','instansi.id','=','kp.instansi_id')
                    ->where('mahasiswa_kp.pembimbing','!=',null)
                    ->where('mahasiswa_kp.proposal_id','!=',null)
                    ->where('mahasiswa_kp.mulai_kp','!=',null)
                    ->where('mahasiswa_kp.selesai_kp','!=',null)
                    ->where('mahasiswa_kp.status','!=',2)
                    ->select(\DB::raw('distinct mahasiswa_kp.id'))
                    ->get();
                   
            return view('laporan.daftar_surat_tugas',compact('MahasiswaKP'));
                // ->where('mahasiswa_kp.cetak_surat_tugas','=',0)
        }
    }

    public function daftar_surat_tugas_with_status($status){
        if(Auth::user()->can('surat_tugas')) {
            if($status == 0){
                $MahasiswaKP = \DB::table('mahasiswa_kp')
                        ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                        ->join('instansi','instansi.id','=','kp.instansi_id')
                        ->where('mahasiswa_kp.pembimbing','!=',null)
                        ->where('mahasiswa_kp.proposal_id','!=',null)
                        ->where('mahasiswa_kp.mulai_kp','!=',null)
                        ->where('mahasiswa_kp.selesai_kp','!=',null)
                        ->where('mahasiswa_kp.status','=',1)
                        ->select(\DB::raw('distinct mahasiswa_kp.id'))
                        ->get();
                return view('laporan.daftar_surat_tugas_with_status',compact('MahasiswaKP','status'));
            } else if ($status == 1){
                $MahasiswaKP = \DB::table('mahasiswa_kp')
                        ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                        ->join('instansi','instansi.id','=','kp.instansi_id')
                        ->where('mahasiswa_kp.pembimbing','!=',null)
                        ->where('mahasiswa_kp.proposal_id','!=',null)
                        ->where('mahasiswa_kp.mulai_kp','!=',null)
                        ->where('mahasiswa_kp.selesai_kp','!=',null)
                        ->where('mahasiswa_kp.status','>',2)
                        ->select(\DB::raw('distinct mahasiswa_kp.id'))
                        ->get();
                return view('laporan.daftar_surat_tugas_with_status',compact('MahasiswaKP','status'));
            } else {
                return redirect('surat_tugas');
            }
        }
    }

    public function surat_tugas($mk_id){
    	$mk = MahasiswaKP::find($mk_id);
        // $mk->cetak_surat_tugas = 1;
        if($mk){
            if($mk->pembimbing != null && $mk->proposal_id != null && $mk->mulai_kp != null && $mk->selesai_kp != null ){
                $mk->status = 3;
                $mk->save();
            	$mulai = explode('-', $mk->mulai_kp);
            	$selesai = explode('-', $mk->selesai_kp);
            	$arrBulan = array(
            		"01" => "Januari",
            		"02" => "Februari",
            		"03" => "Maret",
            		"04" => "April",
            		"05" => "Mei",
            		"06" => "Juni",
            		"07" => "Juli",
            		"08" => "Agustus",
            		"09" => "September",
            		"10" => "Oktober",
            		"11" => "November",
            		"12" => "Desember",
            	);

            	$sekarang = Carbon::now()->format("Y-m-d");
            	$arrSekarang = explode('-', $sekarang);

            	return view('laporan.surat_tugas',compact('mk','mulai','selesai','arrBulan','arrSekarang'));
            } else {
                return redirect('surat_tugas');
            }
        } else {
            return redirect('surat_tugas');
        }
    }

    public function daftar_surat_permohonan_kp(){
        if(Auth::user()->can('surat_permohonan')) {
            $proposals = \DB::table('kp')
                            ->join('mahasiswa_kp','kp.id','=','mahasiswa_kp.proposal_id')
                            ->join('instansi','instansi.id','=','kp.instansi_id')
                            ->where('kp.instansi_id','!=',null)
                            ->where('mahasiswa_kp.proposal_id','!=',null)
                            ->where('kp.status_proposal','=',2)
                            ->select(\DB::raw('distinct kp.id'))
                            ->get();

            return view('laporan.daftar_surat_permohonan_kp',compact('proposals'));
        }
    }

    public function daftar_surat_permohonan_kp_with_status($status){
        if(Auth::user()->can('surat_permohonan')) {
            if($status == 0 || $status == 1){
                $proposals = \DB::table('kp')
                                ->join('mahasiswa_kp','kp.id','=','mahasiswa_kp.proposal_id')
                                ->join('instansi','instansi.id','=','kp.instansi_id')
                                ->where('kp.instansi_id','!=',null)
                                ->where('mahasiswa_kp.proposal_id','!=',null)
                                 ->where('kp.status_proposal','=',2)
                                ->where('kp.cetak_permohonan','=',$status)
                                ->select(\DB::raw('distinct kp.id'))
                                ->get();
                return view('laporan.daftar_surat_permohonan_kp_with_status',compact('proposals','status'));
            } else {
                return redirect('surat_permohonan');
            }
        }
    }

    public function surat_permohonan_kp($proposal_id){
    	$proposal = Proposal::find($proposal_id);
        $proposal->cetak_permohonan = 1;
        $proposal->save();

    	$mulai = explode('-', $proposal->mulai_kp);
    	$selesai = explode('-', $proposal->selesai_kp);
    	$arrBulan = array(
    		"01" => "Januari",
    		"02" => "Februari",
    		"03" => "Maret",
    		"04" => "April",
    		"05" => "Mei",
    		"06" => "Juni",
    		"07" => "Juli",
    		"08" => "Agustus",
    		"09" => "September",
    		"10" => "Oktober",
    		"11" => "November",
    		"12" => "Desember",
    	);

    	$sekarang = Carbon::now()->format("Y-m-d");
    	$arrSekarang = explode('-', $sekarang);
    	return view('laporan.surat_permohonan_kp',compact('mulai','selesai','arrBulan','arrSekarang','proposal'));
    }

    public function cetak_harian($id){
        $mahasiswa_kp = MahasiswaKP::find($id); 
        $mahasiswa = Mahasiswa::find($mahasiswa_kp->mahasiswa_id); 
        return view('laporan.cetak_harian',compact('mahasiswa','mahasiswa_kp'));
    }

    public function daftar_nilai(){
            $mkp = MahasiswaKP::where('status',4)->get();
            return view('laporan.daftar_nilai',compact('mkp'));
    }

    public function surat_daftar_nilai($mk_id){
        $mk = MahasiswaKP::find($mk_id);
        if($mk){
            if($mk->pembimbing != null){
                $arrBulan = array(
                    "01" => "Januari",
                    "02" => "Februari",
                    "03" => "Maret",
                    "04" => "April",
                    "05" => "Mei",
                    "06" => "Juni",
                    "07" => "Juli",
                    "08" => "Agustus",
                    "09" => "September",
                    "10" => "Oktober",
                    "11" => "November",
                    "12" => "Desember",
                );

                $sekarang = Carbon::now()->format("Y-m-d");
                $arrSekarang = explode('-', $sekarang);
                return view('laporan.surat_nilai',compact('mk','arrSekarang','arrBulan'));
            } else {
                return redirect('daftar_nilai_mahasiswa');
            }
        } else {
            return redirect('daftar_nilai_mahasiswa');
        }
    }

    public function laporan_kp_per_tahun($tahun){
        $mahasiswa_kp = MahasiswaKP::where('selesai_kp','>=',$tahun.'-01-01')
                            ->where('selesai_kp','<=',$tahun.'-12-31')
                            ->get();                            
        return view('laporan.laporan_kp_per_tahun',compact('mahasiswa_kp','tahun'));
    }

}
