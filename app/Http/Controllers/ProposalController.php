<?php

namespace App\Http\Controllers;
 
use App\Proposal;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Instansi; 
use App\Mahasiswa; 
use App\MahasiswaKP; 
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Carbon\Carbon;

use Image;
use File;

class proposalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   

    public function index()
    {
        if(Auth::user()->can('isi_proposal')){
            $proposals = Proposal::paginate(10);
            $user = Auth::user();
      
            $instansi = Instansi::all()->pluck('nama', 'id');
            // $mahasiswa_kp = new MahasiswaKP();
            $proposals = Proposal::all();
            $mahasiswas = Mahasiswa::all();
            $mahasiswa = Mahasiswa::all()->pluck('nama', 'id');
            $mhs_kps= MahasiswaKP::with('proposal')->where('mahasiswa_id', $user['id'])->get();
    
            return view('mahasiswa.isi_proposal.index_isi_proposal', compact('proposals','mhs_kps'));
        }   
    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()

    {
        if(Auth::user()->can('isi_proposal')){
            $instansi = Instansi::all()->pluck('nama', 'id');     
            return view('mahasiswa.isi_proposal.create_isi_proposal', compact('instansi'));
        } else {
            return redirect('home');
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
            'instansi' => 'required',
            'mulai_kp'       => 'required',
            'selesai_kp'       => 'required',
            'judul' => 'required',
            'latar_belakang'       => 'required',
            'tujuan'       => 'required' 
        ]);
        
       

        $proposal                 = new Proposal();
        $proposal->instansi_id           = $request->input('instansi');
        $proposal->mulai_kp           = $request->input('mulai_kp');
        $proposal->selesai_kp  = $request->input('selesai_kp');
        $proposal->judul           = $request->input('judul');
        $proposal->latar_belakang  = $request->input('latar_belakang');
        $proposal->tujuan  = $request->input('tujuan');
        $proposal->status_proposal=1;
        
        if($proposal->save())
        {
            $mahasiswa_kp = new MahasiswaKP();
            $mahasiswa_kp->mahasiswa_id= Auth::user()->id;
            $mahasiswa_kp->bidang = $request->input('bidang');
            $mahasiswa_kp->proposal_id=$proposal->id;
            $mahasiswa_kp->save();
            toast()->success('Data proposal berhasil ditambahkan');
           
            return redirect()->route('proposal.index');
        }
        else
        {
            toast()->error('Data proposal gagal ditambahkan');
            return redirect()->route('proposal.create');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\proposal  $proposal
     * @return \Illuminate\Http\Response
     */
    public function show($id)

    {

        $user = Auth::user();
       
         $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
         $proposal=$mahasiswa_kp->proposal;
         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;
        return view('mahasiswa.isi_proposal.show_isi_proposal',compact('proposal','instansi','anggotas','mahasiswa_kp'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\proposal  $proposal
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $user = Auth::user();

        // $proposal = Proposal::find($id);
        
         $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
          $proposal=$mahasiswa_kp->proposal;

          // dd($proposal);
         return view('mahasiswa.isi_proposal.edit_isi_proposal', compact('mahasiswa_kp','proposal'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\proposal  $proposal
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
          $request->validate([
           'judul' => 'required',
            'latar_belakang'       => 'required',
            'tujuan'       => 'required'
        ]);
         // $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
          $proposal = Proposal::find($id);
         // $proposal=$mahasiswa_kp->proposal;
        // $proposal                  = Proposal::find($id);
        $proposal->judul           = $request->input('judul');
        $proposal->mulai_kp           = $request->input('mulai_kp');
        $proposal->selesai_kp        = $request->input('selesai_kp');
       $proposal->latar_belakang  = $request->input('latar_belakang');
       $proposal->tujuan  = $request->input('tujuan');
       $proposal->status_proposal=5;
        
        if($proposal->save())                    
        {
            toast()->success('Data proposal berhasil diperbaharui');
           
            return redirect()->route('proposal.index');
        }
        else
        {
            toast()->error('Data proposal gagal diperbaharui');
            return redirect()->route('proposal.edit', ['id' => $proposal->id]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\proposal  $proposal
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
              
        $mahasiswa_kp->delete();
        $mahasiswa_kp->proposal->delete();
       
        toast()->success('Data proposal berhasil dihapus');

        return redirect()->route('proposal.index');
    }

    public function tambah_anggota($id)

    {
      
         $user = Auth::user();
         $mahasiswa = Mahasiswa::all()->pluck('nama', 'id');

       
        // $instansi = Instansi::all()->pluck('nama', 'id');
         $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
       
         
         // $proposal_id=$mahasiswa_kp->
       
         $proposal=$mahasiswa_kp->proposal;
         // dd($proposal->id);

         $instansi=$proposal->intansi;
         $anggotas=$proposal->mahasiswas;

        return view('mahasiswa.isi_proposal.tambah_anggota', compact('mahasiswa', 'proposal_id', 'anggotas','mahasiswa_kp','proposal'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storedata(Request $request)
    {
          $request->validate([
            'id' => 'required',
            'mahasiswa'       => 'required',
            'bidang'       => 'required',
            
        ]);
        
        
        $proposal_id = $request->input('id');
        $mahasiswa_id = $request->input('mahasiswa');
       
        $cari_mahasiswa = MahasiswaKP::where('proposal_id',$proposal_id)->where('mahasiswa_id',$mahasiswa_id)->get();
        
        $id = DB::table('mahasiswa_kp')->where('mahasiswa_id', Auth::user()->id)->where('proposal_id', $proposal_id)->value('id');

        if($cari_mahasiswa->count() == 0){
            $mahasiswa_kp = new MahasiswaKP();
            $mahasiswa_kp->mahasiswa_id= $request->input('mahasiswa');
            $mahasiswa_kp->bidang= $request->input('bidang');
            $mahasiswa_kp->proposal_id=$request->input('id');
            
            $mahasiswa_kp->save();

            // $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($mahasiswa_kp->proposal_id);
            $proposal=$mahasiswa_kp->proposal;
            $mahasiswa = Mahasiswa::all()->pluck('nama', 'id');
            $anggotas=$proposal->mahasiswas;
            //dd($mahasiswa_kp->id);
            //dd(Auth::user()->id);
            // $id = DB::table('mahasiswa_kp')->where('mahasiswa_id', Auth::user()->id)->where('proposal_id', $mahasiswa_kp->id)->value('id');
            //$id = MahasiswaKP::where('mahasiswa_id', Auth::user()->id)->where('proposal_id', $mahasiswa_kp->id)->get('id');
            // dd($id);

            if($mahasiswa_kp->save())
            {
                toast()->success('Anggota berhasil ditambahkan');
                // return redirect()->route('tambah_anggota.add', compact('proposal','mahasiswa','anggotas', ''));
               return redirect()->route('tambah_anggota.add', [$id]);

                // return view('mahasiswa.isi_proposal.tambah_anggota', compact('proposal','mahasiswa','anggotas'));
            }
            else
            {
                toast()->error('Anggota gagal ditambahkan');
                return redirect()->route('tambah_anggota.add', [$id]);

                
            }
            
        } else {
            toast()->error('Anggota Sudah ditambahkan');
            return redirect()->route('tambah_anggota.add', [$id]);

        }

    }

    public function hapus_anggota($id)
    {
        $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
        $mahasiswa_kp = MahasiswaKP::find($id);
        $proposal=$mahasiswa_kp->proposal;
        $anggotas=$proposal->mahasiswas;
        //dd([$anggotas, $proposal, $mahasiswa_kp]);
        $mahasiswa_kp->delete();
        $id = DB::table('mahasiswa_kp')->where('mahasiswa_id', Auth::user()->id)->where('proposal_id', $proposal->id)->value('id');
       //dd($id);
        toast()->success('anggota berhasil dihapus');

        return redirect()->route('tambah_anggota.add', [$id]);

    }

    public function download_form()
    {
        return view('download_file.form_kp');
    }

    Public function seminar_kp(){
        $kp = MahasiswaKP::where('tanggal_seminar','!=',null)->paginate(10);
        return view('seminar_kp.index',compact('kp'));
    }

    Public function berkas_kp($id){
        $kp = MahasiswaKP::find($id);
        return view('seminar_kp.berkas',compact('kp'));
    }

    Public function berita_acara($id){
        $kp = MahasiswaKP::find($id);
        return view('berita_acara.index',compact('kp'));
    }

    Public function update_berita_acara(Request $request){
        return view('seminar_kp.berkas',compact('kp'));
    }

    public function lihat_status_proposal(){
        $proposal = Proposal::paginate(10);
        $semua_proposal = Proposal::all();
        $mahasiswas = Mahasiswa::all();
        $mahasiswa = Mahasiswa::all()->pluck('nama', 'id');


        //dd($user['id']);
            $mhs_kps= MahasiswaKP::with('proposal')->get();
        return view('admin.kp.lihat_status_proposal',compact('proposal','semua_proposal','mhs_kps'));
    }

    public function surat_balasan(){
        if(Auth::user()->can('surat_balasan')) {

            $kps = \DB::table('mahasiswa_kp')
                    ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                    ->join('instansi','instansi.id','=','kp.instansi_id')
                    ->where('mahasiswa_kp.status','=',null)
                    ->where('mahasiswa_kp.proposal_id','!=',null)
                     ->where('kp.status_proposal','=',2)
                     ->where('kp.surat_balasan','!=',null)
                    
                    ->select(\DB::raw('distinct mahasiswa_kp.id'))
                    ->get();

            // $kps = MahasiswaKP::where('status','=',null)->paginate(10);
            return view('admin.kp.surat_balasan',compact('kps'));
        }
    }

    public function acc_surat_balasan(Request $request){
        $mhs_kp = MahasiswaKP::find($request->id);
        $mhs_kp->status = $request->status;
        $mhs_kp->save();
        toast()->success('Data Berhasil Diverifikasi');

        return redirect('daftar_surat_balasan');
    }
    

   


} 
