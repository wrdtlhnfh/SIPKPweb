<?php

namespace App\Http\Controllers;

use App\MahasiswaKP;
use Illuminate\Http\Request;
use App\Instansi; 
use App\Mahasiswa; 
use App\Proposal;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use App\User;
 
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

Use Carbon\Carbon;

use Image;
use File;


class MahasiswaKPController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
        $user = Auth::user();
        $mahasiswa_kp = new MahasiswaKP();
        $instansi = Instansi::all()->pluck('nama', 'id');
        $proposal= Proposal::all();
       
        $mahasiswa = Mahasiswa::all()->pluck('nama', 'id');
        return view('mahasiswa.mahasiswakp.selesai', compact('instansi','mahasiswa','proposal','mahasiswa_kp'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\MahasiswaKP  $mahasiswaKP
     * @return \Illuminate\Http\Response
     */
    public function show(MahasiswaKP $mahasiswaKP)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MahasiswaKP  $mahasiswaKP
     * @return \Illuminate\Http\Response
     */
    public function edit(MahasiswaKP $mahasiswaKP)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MahasiswaKP  $mahasiswaKP
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MahasiswaKP $mahasiswaKP)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MahasiswaKP  $mahasiswaKP
     * @return \Illuminate\Http\Response
     */
    public function destroy(MahasiswaKP $mahasiswaKP)
    {
        //
    }

    public function selesai($id)
    {
        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
        // dd($mahasiswa_kp);
        // $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
       
       
        return view('mahasiswa.mahasiswakp.selesai', compact('instansi','mahasiswa_kp','proposal','anggotas'));
    }

    public function selesaiSave(Request $request,$id)

    {

         $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         //dd($proposal);
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
         $mahasiswaKp = MahasiswaKP::find($id)->where('proposal_id',$request->proposal_id)->first();
         //dd($mahasiswa_kp->id);
         $mahasiswa_kp->judul_laporan = $request->judul_laporan;
         $mahasiswa_kp->tanda_terima_laporan = $request->tanda_terima_laporan;

        //$path = config('central.path.tanda_terima_laporans');
        
        
        $ttlext = $request->file('tanda_terima_laporan')->extension();
        $file_ttl = "tanda_terima_laporan-".$mahasiswa_kp->id.'.'.$ttlext;
        
        $ttlpath = $request->file('tanda_terima_laporan')->storeAs('tanda_terima_laporan/', $file_ttl, 'local');
        $mahasiswa_kp->tanda_terima_laporan = $ttlpath;
    
    
    
        $lkext = $request->file('lap_kegiatan')->extension();
        $file_lk = "laporan_kegiatan-".$mahasiswa_kp->id.'.'.$lkext;
        $lkpath = $request->file('lap_kegiatan')->storeAs('lap_kegiatan/', $file_lk, 'local');
        $mahasiswa_kp->lap_kegiatan = $lkpath;
    
    
    
        $nlext = $request->file('nilai_lapangan')->extension();
        $file_nl = "nilai_lapangan-".$mahasiswa_kp->id.'.'.$nlext;
        $nlpath = $request->file('nilai_lapangan')->storeAs('nilai_lapangan/', $file_nl, 'local');
        $mahasiswa_kp->nilai_lapangan = $nlpath;

        $skext = $request->file('sertifikat_kp')->extension();
        $file_sk = "sertifikat_kp-".$mahasiswa_kp->id.'.'.$skext;
        $skpath = $request->file('sertifikat_kp')->storeAs('sertifikat_kp/', $file_sk, 'local');
        $mahasiswa_kp->sertifikat_kp = $skpath;
        

        $mahasiswa_kp->status = 3;
        $mahasiswa_kp->save();

        return redirect(route('proposal.index'));

    }
    public function seminar($id)
    {

        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
        
       

        // dd($mahasiswa_kp->judul_laporan);
        // $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
       
       
        return view('mahasiswa.mahasiswakp.seminar', compact('instansi','mahasiswa_kp','proposal','anggotas','judul_laporan'));
    }

    public function storeseminar(Request $request,$id)
    {

         $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         //dd($proposal);
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
         $mahasiswaKp = MahasiswaKP::find($id)->where('proposal_id',$request->proposal_id)->first();
         //dd($mahasiswa_kp->id);
         $mahasiswa_kp->ruang_seminar = $request->ruang_seminar;
         $mahasiswa_kp->tanggal_seminar = $request->tanggal_seminar;
         $mahasiswa_kp->jam_seminar = $request->jam_seminar;
         
         // $mahasiswa_kp->tanda_terima_laporan = $request->tanda_terima_laporan;

        //$path = config('central.path.tanda_terima_laporans');
        
        
        $ttlext = $request->file('daftar_hadir')->extension();
        $file_ttl = "daftar_hadir-".$mahasiswa_kp->id.'.'.$ttlext;
        $ttlpath = $request->file('daftar_hadir')->storeAs('daftar_hadir/', $file_ttl, 'local');
        $mahasiswa_kp->daftar_hadir = $ttlpath;
    
    
    
        $lkext = $request->file('berita_acara')->extension();
        $file_lk = "berita_acara-".$mahasiswa_kp->id.'.'.$lkext;
        $lkpath = $request->file('berita_acara')->storeAs('berita_acara/', $file_lk, 'local');
        $mahasiswa_kp->berita_acara = $lkpath;
    
    
        $nlext = $request->file('laporan_kp')->extension();
        $file_nl = "laporan_kp-".$mahasiswa_kp->id.'.'.$nlext;
        $nlpath = $request->file('laporan_kp')->storeAs('laporan_kp/', $file_nl, 'local');
        $mahasiswa_kp->laporan_kp = $nlpath;
        

        $mahasiswa_kp->status = 6;
        $mahasiswa_kp->save();

        return redirect(route('proposal.index'));
    }

    public function nilaikp($id)

    {
        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
        
       

        // dd($mahasiswa_kp->judul_laporan);
        // $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
         
       
       
        return view('mahasiswa.mahasiswakp.nilai_kp', compact('instansi','mahasiswa_kp','proposal','anggotas','judul_laporan'));
    }

    public function status_proposal($id)
   {
        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
        // dd($mahasiswa_kp->judul_laporan);
        // $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
        
         $anggotas=$proposal->mahasiswas;
         
        return view('mahasiswa.isi_proposal.status_proposal', compact('instansi','mahasiswa_kp','proposal','anggotas','judul_laporan'));

   }
   public function store_status_proposal(Request $request,$id)
   {

         $mahasiswa_kp=MahasiswaKP::find($id);
         $proposal=$mahasiswa_kp->proposal;
         //dd($proposal);
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
         $mahasiswaKp = MahasiswaKP::find($id)->where('proposal_id',$request->proposal_id)->first();
         //dd($mahasiswa_kp->id);
         // $mahasiswa_kp->status = $request->status;
         $mahasiswa_kp->mulai_kp = $request->mulai_kp;
         $mahasiswa_kp->selesai_kp = $request->selesai_kp;
         

        $mahasiswa_kp->save();
         // $mahasiswa_kp->tanda_terima_laporan = $request->tanda_terima_laporan;

        //$path = config('central.path.tanda_terima_laporans');
        
        $ttlext = $request->file('surat_balasan')->extension();
        $file_ttl = "surat_balasan-".$mahasiswa_kp->id.'.'.$ttlext;
        $ttlpath = $request->file('surat_balasan')->storeAs('balasan/', $file_ttl, 'local');
        $proposal->surat_balasan = $ttlpath;
        $proposal->save();
    
       return redirect(route('proposal.index'));
   }

   public function acc_berkas_kp(){
        $status= [3,9];
        if(isset(Auth::user()->roles()->first()->name) && Auth::user()->roles()->first()->name == 'mahasiswa'){
            $mahasiswa_kp = MahasiswaKP::whereIn('status',$status)
                                ->where('lap_kegiatan','!=',null)
                                ->where('tanda_terima_laporan','!=',null)
                                ->where('nilai_lapangan','!=',null)
                                ->where('sertifikat_kp','!=',null)
                                ->where('mahasiswa_id',Auth::user()->id)
                                ->orderBy('status')->get();
        } else{
            $mahasiswa_kp = MahasiswaKP::whereIn('status',$status)
                                ->where('lap_kegiatan','!=',null)
                                ->where('tanda_terima_laporan','!=',null)
                                ->where('nilai_lapangan','!=',null)
                                ->where('sertifikat_kp','!=',null)->get();
        }
                // return $mahasiswa_kp;

        
        return view('admin.kp.acc_berkas',compact('mahasiswa_kp'));

   }

   public function berkas_kp_bimbingan(){
        if(Auth::user()->can('berkas_kp_bimbingan')) {
            $status= [3,5];
            if(Auth::user()->can('berkas_kp_bimbingan')){
                $mahasiswa_kp = MahasiswaKP::whereIn('status',$status)
                                    ->where('lap_kegiatan','!=',null)
                                    ->where('tanda_terima_laporan','!=',null)
                                    ->where('nilai_lapangan','!=',null)
                                    ->where('sertifikat_kp','!=',null)
                                    ->where('pembimbing',Auth::user()->id)->get();
                // return $mahasiswa_kp;
                return view('admin.kp.acc_berkas',compact('mahasiswa_kp'));
            }
        }

   }

   public function verifikasi_berkas_kp(Request $request){
        $mahasiswa_kp = MahasiswaKP::find($request->id);
        $mahasiswa_kp->status = 6;
        $now = Carbon::now()->format('Y-m-d');
        $mahasiswa_kp->selesai_kp = $now;
        $arrTime = explode('-', $now);
        $Time  = Carbon::createFromDate($arrTime[0],$arrTime[1],$arrTime[2]);
        $deadline = $Time->addMonths(2)->format('Y-m-d');
        $mahasiswa_kp->deadline_seminar = $deadline;
        $mahasiswa_kp->save();
        return redirect('berkas_kp');
   }

   public function detail_mahasiswa($id){
        $mahasiswa = Mahasiswa::find($id);
        
        return view('mahasiswa.MahasiswaKP.detail_mahasiswa',compact('mahasiswa'));
   }

   public function list_laporan_kp(){
        if(Auth::user()->can('laporan_kp')){
        $mahasiswa_kp = MahasiswaKP::where('laporan_kp','!=',null)->get();
        return view('admin.kp.list_laporan_kp',compact('mahasiswa_kp'));    
        }

   }

   public function list_laporan_kp_bimbingan(){
        if(Auth::user()->can('laporan_kp_bimbingan')) {
            $mahasiswa_kp = MahasiswaKP::where('laporan_kp','!=',null)->where('pembimbing',Auth::user()->id)->get();
            return view('admin.kp.list_laporan_kp',compact('mahasiswa_kp'));
        }
   }

   public function list_seminar(){
        if(Auth::user()->can('berkas_seminar')) {
            $mahasiswa_kp = MahasiswaKP::where('status','=','6')
                                ->orWhere('status','=','10')
                                ->orderBy('status')->get();
            return view('admin.kp.list_seminar',compact('mahasiswa_kp')); 
        }
   }

   public function acc_seminar(Request $request){
        if(Auth::user()->can('acc_seminar')) {
            $mahasiswaKP = MahasiswaKP::find($request->id);
            $mahasiswaKP->status = 7;
            $mahasiswaKP->save();
            return redirect('list_seminar');
        }
    }

    public function berkas_seminar() {
        if(Auth::user()->can('berkas_seminar')) {
            $mahasiswa_kp = MahasiswaKP::where('status','=','7')->get();
            return view('admin.kp.berkas_seminar',compact('mahasiswa_kp')); 
        }
    }

    public function kp_per_tahun($tahun){
        if(Auth::user()->can('laporan_tahunan')){
            $tahun_kp = DB::table('mahasiswa_kp')
                        ->where('selesai_kp','!=',null)
                        ->select(DB::raw('distinct YEAR(selesai_kp) as tahun'))->get();
            $status =[2,4,5];
            $beban_dosen = DB::table('mahasiswa_kp')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')
                                ->whereNotIn('status',$status)
                                ->where('pembimbing','!=',null)
                                ->groupBy('pembimbing')
                                ->select(DB::raw('count(id) as jml_beban'),'mahasiswa_kp.pembimbing')->get();
            $mahasiswa_kp = MahasiswaKP::where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')
                                ->paginate(10);
            $kp_per_lokasi = DB::table('mahasiswa_kp')
                                ->join('kp','mahasiswa_kp.proposal_id','=','kp.id')
                                ->where('mahasiswa_kp.selesai_kp','>=',$tahun.'-01-01')
                                ->where('mahasiswa_kp.selesai_kp','<=',$tahun.'-12-31')
                                ->groupBy('kp.instansi_id')
                                ->select('kp.instansi_id',DB::raw('count(mahasiswa_kp.id) as jumlah'))
                                ->get();
            $selesai = MahasiswaKP::where('status','4')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')->get();
            $batal = MahasiswaKP::where('status','5')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')->get();
            return view('admin.kp.kp_per_tahun',compact('mahasiswa_kp','tahun','beban_dosen','kp_per_lokasi','selesai','batal','tahun_kp'));     
        }
    }

    public function kp_periode(){
        if(Auth::user()->can('laporan_tahunan')){
            $tahun_kp = DB::table('mahasiswa_kp')
                        ->where('selesai_kp','!=',null)
                        ->select(DB::raw('distinct YEAR(selesai_kp) as tahun'))->get();
            // return $tahun_kp;
            $status =[2,4,5];
            $now = Carbon::now()->format("Y-m-d");
            $arrTime = explode('-', $now);
            $tahun = $arrTime[0];
            $beban_dosen = DB::table('mahasiswa_kp')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')
                                ->whereNotIn('status',$status)
                                ->where('pembimbing','!=',null)
                                ->groupBy('pembimbing')
                                ->select(DB::raw('count(id) as jml_beban'),'mahasiswa_kp.pembimbing')->get();
            $mahasiswa_kp = MahasiswaKP::where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')
                                ->paginate(10);
            $kp_per_lokasi = DB::table('mahasiswa_kp')
                                ->join('kp','mahasiswa_kp.proposal_id','=','kp.id')
                                ->where('mahasiswa_kp.selesai_kp','>=',$tahun.'-01-01')
                                ->where('mahasiswa_kp.selesai_kp','<=',$tahun.'-12-31')
                                ->where('mahasiswa_kp.status','=','4')
                                ->groupBy('kp.instansi_id')
                                ->select('kp.instansi_id',DB::raw('count(mahasiswa_kp.id) as jumlah'))
                                ->get();
            $selesai = MahasiswaKP::where('status','4')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')->get();
            $batal = MahasiswaKP::where('status','5')
                                ->where('selesai_kp','>=',$tahun.'-01-01')
                                ->where('selesai_kp','<=',$tahun.'-12-31')->get();
            return view('admin.kp.kp_per_tahun',compact('mahasiswa_kp','tahun','beban_dosen','kp_per_lokasi','selesai','batal','tahun_kp'));     
        }
    }
    
    function tambah_catatan_verifikasi($id, Request $request){
        if($request->statusKP == 9){
            $mkp = MahasiswaKP::find($id);
            $mkp->catatan_verifikasi = $request->isiCatatan;
            $mkp->status = $request->statusKP;
            $mkp->save();            
            return redirect('berkas_kp');
        } else if($request->statusKP == 10){
            $mkp = MahasiswaKP::find($id);
            $mkp->catatan_verifikasi = $request->isiCatatan;
            $mkp->status = $request->statusKP;
            $mkp->save();            
            return redirect('list_seminar');
        } else if($request->statusKP == 11){
            $mkp = MahasiswaKP::find($id);
            $mkp->catatan_nilai = $request->isiCatatan;
            $mkp->status = $request->statusKP;
            $mkp->save();            
            return redirect('daftar_nilai');
        }
    }

}

        