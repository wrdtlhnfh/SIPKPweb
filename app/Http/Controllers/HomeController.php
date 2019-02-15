<?php

namespace App\Http\Controllers;
use App\MahasiswaKP;
use App\Proposal;
use App\Dosen;
use App\StatusProposal;
use App\StatusKP;
use Auth;
use \Carbon\Carbon;
use DB;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    function blankDashboard() {
        $blankPage = true;

        $suratTugas = \DB::table('mahasiswa_kp')
                ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                ->join('instansi','instansi.id','=','kp.instansi_id')
                ->where('mahasiswa_kp.pembimbing','!=',null)
                ->where('mahasiswa_kp.proposal_id','!=',null)
                ->where('mahasiswa_kp.status','=',1)
                ->select(\DB::raw('distinct mahasiswa_kp.id'))
                ->get();
        $jumlahSuratTugas = count($suratTugas);

        $suratPermohonan= \DB::table('kp')
                        ->join('mahasiswa_kp','kp.id','=','mahasiswa_kp.proposal_id')
                        ->join('instansi','instansi.id','=','kp.instansi_id')
                        ->where('kp.instansi_id','!=',null)
                        ->where('mahasiswa_kp.proposal_id','!=',null)
                        ->where('kp.cetak_permohonan','=',0)
                        ->select(\DB::raw('distinct kp.id'))
                        ->get();
        $jumlahSuratPermohonan = count($suratPermohonan);

        $sedangKP = MahasiswaKP::where('status',3)->get();
        $jumlahSedangKP = count($sedangKP);

        $mulaiBimbingan = MahasiswaKP::where('status',6)->get();
        $jumlahMulaiBimbingan = count($mulaiBimbingan);

        $sudahSeminar = MahasiswaKP::where('status',7)->get();
        $jumlahSudahSeminar = count($sudahSeminar);

        $sudahSelesaiKP = MahasiswaKP::where('status',4)->get();
        $jumlahSelesaiKP = count($sudahSelesaiKP);

        $sedangKPDosen = MahasiswaKP::where('status',3)->where('pembimbing',Auth::user()->id)->get();
        $jumlahSedangKPDosen = count($sedangKPDosen);

        $mulaiBimbinganDosen = MahasiswaKP::where('status',6)->where('pembimbing',Auth::user()->id)->get();
        $jumlahMulaiBimbinganDosen = count($mulaiBimbinganDosen);

        $sudahSeminarDosen = MahasiswaKP::where('status',7)->where('pembimbing',Auth::user()->id)->get();
        $jumlahSudahSeminarDosen = count($sudahSeminarDosen);

        $sudahSelesaiKPDosen = MahasiswaKP::where('status',4)->where('pembimbing',Auth::user()->id)->get();
        $jumlahSelesaiKPDosen = count($sudahSelesaiKPDosen);

        $verifikasiSuratBalasan = MahasiswaKP::where('status',null)->get();
        $jumlahVerifikasiSuratBalasan = count($verifikasiSuratBalasan);

        $status= [3,5];
        $verifikasiBerkasKP = MahasiswaKP::whereIn('status',$status)->get();        
        $jumlahVerifikasiBerkasKP = count($verifikasiBerkasKP);

        $verifikasiBerkasSeminar = MahasiswaKP::where('status',7)->get();
        $jumlahVerifikasiBerkasSeminar = count($verifikasiBerkasSeminar);

        $jml_mhs_bimbingan = 0;
        $jml_mhs_bimbingan_aktif = 0;
        $jml_mhs_bimbingan_selesai = 0;
        $jml_nilai_tidak_disetujui = 0;

        if(Auth::user()->can('sidebar_mhs_bimbingan')){
            $mhs_bimbingan = MahasiswaKP::where('pembimbing',Auth::user()->id)->get();
            $jml_mhs_bimbingan = count($mhs_bimbingan);

            $mhs_bimbingan_aktif = MahasiswaKP::where('pembimbing',Auth::user()->id)->where('status',3)->get();
            $jml_mhs_bimbingan_aktif = count($mhs_bimbingan_aktif);

            $mhs_bimbingan_selesai = MahasiswaKP::where('pembimbing',Auth::user()->id)->where('status',4)->get();
            $jml_mhs_bimbingan_selesai = count($mhs_bimbingan_selesai);

            $nilai_tidak_disetujui = MahasiswaKP::where('pembimbing',Auth::user()->id)->where('status',11)->get();
            $jml_nilai_tidak_disetujui = count($nilai_tidak_disetujui);
        }

        $proposal_diajukan = Proposal::where('status_proposal',1)->get();
        $jml_proposal_diajukan = count($proposal_diajukan);

        $permintaan_pembimbing = MahasiswaKP::where('pembimbing',null)->where('status','=',1)->get();
        
        $jml_permintaan_pembimbing = count($permintaan_pembimbing);

        $proposal_revisi = Proposal::where('status_proposal',4)->get();
        $jml_proposal_revisi = count($proposal_revisi);

        $status =[2,4,5];
        $beban_dosen = DB::table('mahasiswa_kp')->whereNotIn('status',$status)
                            ->where('pembimbing','!=',null)
                            ->groupBy('pembimbing')
                            ->select(DB::raw('count(id) as jml_beban'),'mahasiswa_kp.pembimbing')->get();

        $proposal_saya = null;
        $status_proposal_saya = "";
        $status_kp_saya = "";
        $tgl_deadline_berkas = "";
        $tgl_deadline_seminar = "";
        $sisa_tgl_seminar = "";
        $sisa_tgl_berkas = "";
        $status_berkas_kp_saya = "";
        $status_berkas_seminar_saya = "";
        $surat_permohonan_saya = "";
        $surat_tugas_saya = "";
        $pembimbing_saya = "";
        $catatan_saya = "";
        if(Auth::user()->can('isi_proposal')){
            $proposal_saya = DB::table('kp')
                                ->join('mahasiswa_kp','mahasiswa_kp.proposal_id','=','kp.id')
                                ->where('mahasiswa_kp.mahasiswa_id',Auth::user()->id)
                                ->orderBy('kp.id','desc')->get();
            // return $proposal_saya;
            
            if(count($proposal_saya)){
                if($proposal_saya[0]->status_proposal != null){
                    $status_proposal_saya = StatusProposal::find($proposal_saya[0]->status_proposal)->status;

                    if($proposal_saya[0]->lap_kegiatan){
                        if($proposal_saya[0]->status == 9){
                            $status_berkas_kp_saya = "Belum Lengkap";
                            $catatan_saya = $proposal_saya[0]->catatan_verifikasi;
                        } else if($proposal_saya[0]->status < 4 && $proposal_saya[0]->status != 5){
                            $status_berkas_kp_saya = "Belum Diverifikasi";
                        } else {
                            $status_berkas_kp_saya = "Sudah Diverifikasi";
                        }
                    }

                    if($proposal_saya[0]->tanggal_seminar){
                        if($proposal_saya[0]->status == 10){
                            $status_berkas_kp_saya = "Belum Lengkap";
                            $catatan_saya = $proposal_saya[0]->catatan_verifikasi;
                        } else if($proposal_saya[0]->status == 4 || $proposal_saya[0]->status > 6){
                            $status_berkas_seminar_saya = "Sudah Diverifikasi";
                        } else {
                            $status_berkas_seminar_saya = "Belum Diverifikasi";
                        }
                    }

                    if($proposal_saya[0]->cetak_permohonan == 1){
                        $surat_permohonan_saya = "Sudah Dicetak";
                    } else {
                        $surat_permohonan_saya = "Belum Tersedia";
                    }


                }
                if($proposal_saya[0]->status >= 3 &&  $proposal_saya[0]->status != 5){
                    $surat_tugas_saya = "Sudah Dicetak";
                } else {
                    $surat_tugas_saya = "Belum Tersedia";
                }
                if($proposal_saya[0]->status != null){
                    $status_kp_saya = StatusKP::find($proposal_saya[0]->status)->status_kp;
                }

                if($proposal_saya[0]->pembimbing != null){
                    $pembimbing_saya = Dosen::find($proposal_saya[0]->pembimbing)->nama;
                }

                if($proposal_saya[0]->deadline_seminar != null){
                    if($proposal_saya[0]->status == 1 || $proposal_saya[0]->status == 3 || $proposal_saya[0]->status == 6){
                        $tgl_deadline_seminar = $proposal_saya[0]->deadline_seminar;
                        $arrTime2 = explode('-', $tgl_deadline_seminar);
                        $Time2  = Carbon::createFromDate($arrTime2[0],$arrTime2[1],$arrTime2[2]);
                        $sisa_tgl_seminar = $Time2->diff(Carbon::now())->format('%m Bulan and %d Hari');
                    }
                    
                }
                if($proposal_saya[0]->selesai_kp != null){
                    if($proposal_saya[0]->status <= 3 || $proposal_saya[0]->status == 9){
                        $tgl_selesai_kp = $proposal_saya[0]->selesai_kp;
                        $arrTime = explode('-', $tgl_selesai_kp);
                        $Time  = Carbon::createFromDate($arrTime[0],$arrTime[1],$arrTime[2]);
                        $tgl_deadline_berkas = $Time->addMonths(1)->format('Y-m-d');
                        $sisa_tgl_berkas = $Time->diff(Carbon::now())->format('%m Bulan and %d Hari');
                    }
                }
                
            }

        }

        $persetujuan_nilai = 0;
        if(Auth::user()->can('acc_nilai')){
            $mkp = MahasiswaKP::where('status',7)->get();
            $persetujuan_nilai = count($mkp);
        }

        $now = Carbon::now();
        $kp_lewat = MahasiswaKP::where('deadline_seminar','<',$now)->where('status','!=','5')->get();
        $jumlahKPLewat = count($kp_lewat);
        return view('blank',compact('blankPage','jumlahSuratTugas','jumlahSuratPermohonan','jumlahSedangKP','jumlahMulaiBimbingan','jumlahSudahSeminar','jml_nilai_tidak_disetujui','jumlahSelesaiKP','jumlahSedangKPDosen','jumlahMulaiBimbinganDosen','jumlahSudahSeminarDosen','jumlahSelesaiKPDosen','jml_mhs_bimbingan','jml_mhs_bimbingan_aktif','jml_mhs_bimbingan_selesai','jml_proposal_diajukan','jml_permintaan_pembimbing','jml_proposal_revisi','beban_dosen','proposal_saya','status_proposal_saya','status_kp_saya','tgl_deadline_seminar','tgl_deadline_berkas','sisa_tgl_berkas','sisa_tgl_seminar','persetujuan_nilai','jumlahVerifikasiSuratBalasan','jumlahVerifikasiBerkasKP','jumlahVerifikasiBerkasSeminar','jumlahKPLewat','status_berkas_seminar_saya','status_berkas_kp_saya','surat_permohonan_saya','surat_tugas_saya','pembimbing_saya','catatan_saya'));

    }
}
