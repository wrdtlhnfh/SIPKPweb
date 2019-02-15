<?php

namespace App\Http\Controllers;

use App\Kaprodi;
use App\User; 
use App\Instansi; 
use App\Mahasiswa; 
use App\MahasiswaKP; 
use App\Proposal;
use App\StatusProposal;
use App\StatusKP;
use App\Dosen; 
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class KaprodiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Kaprodi  $kaprodi
     * @return \Illuminate\Http\Response
     */
    public function show(Kaprodi $kaprodi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Kaprodi  $kaprodi
     * @return \Illuminate\Http\Response
     */
    public function edit(Kaprodi $kaprodi)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Kaprodi  $kaprodi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kaprodi $kaprodi)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Kaprodi  $kaprodi
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kaprodi $kaprodi)
    {
        //
    }

    public function proposal_mahasiswa()
    {

            // if(isset(Auth::user()->roles()->first()->name) && Auth::user()->roles()->first()->name == 'dosen')
            // {
            //     $proposals = DB::table('dosen')
            //                     ->join('mahasiswa_kp','dosen.id','=','mahasiswa_kp.pembimbing')
            //                     ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
            //                     ->where('mahasiswa_kp.pembimbing',Auth::user()->id)
            //                     ->select('kp.*')
            //                     ->paginate(10);
            // } else if(isset(Auth::user()->roles()->first()->name) && Auth::user()->roles()->first()->name == 'mahasiswa')
            // {
            //     $proposals = DB::table('mahasiswa_kp')
            //                     ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
            //                     ->where('mahasiswa_kp.mahasiswa_id',Auth::user()->id)
            //                     ->select('kp.*')
            //                     ->paginate(10);
            // } 
            // else 
            // {
            //     $proposals = Proposal::paginate(10);
            // }
            if(Auth::user()->can('proposal_mhs')){
                $proposals = Proposal::paginate(10);
                $status_proposals = StatusProposal::all();
                
                return view('kaprodi.proposal_mhs', compact('proposals','status_proposals'));
            }

    }

    public function proposal_mahasiswa_with_status($status)
    {

            if(Auth::user()->can('proposal_mhs')){
                $proposals = Proposal::where('status_proposal',$status)->paginate(10);
                $status_proposals = StatusProposal::all();
              
                return view('kaprodi.proposal_mhs_with_status', compact('proposals','status_proposals','status'));
            }

    }

    public function lihat_status_kp()
    {
            if(Auth::user()->can('status_kp'))
            {
                $mahasiswa_kps = MahasiswaKP::paginate(10);
                $status_kps = StatusKP::all();
                return view('kaprodi.lihat_kp_mhs', compact('mahasiswa_kps','status_kps'));
            } 
            
            // return Auth::user()->roles()->first()->id;
          

    }

    public function lihat_status_kp_terpilih($status)
    {
            if(Auth::user()->can('status_kp'))
            {
                $mahasiswa_kps = MahasiswaKP::where('status',$status)->paginate(10);
                $status_kps = StatusKP::all();
                return view('kaprodi.lihat_kp_mhs_terpilih', compact('mahasiswa_kps','status_kps','status'));
            } 
            
            // return Auth::user()->roles()->first()->id;
          

    }

    public function mahasiswa_kp_bimbingan()
    {
            if(Auth::user()->can('status_kp_bimbingan'))
            {
                $mahasiswa_kps = DB::table('dosen')
                                ->join('mahasiswa_kp','dosen.id','=','mahasiswa_kp.pembimbing')
                                ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                                ->where('mahasiswa_kp.pembimbing',Auth::user()->id)
                               
                                ->select('mahasiswa_kp.*')
                                ->paginate(10);
                $status_kps = StatusKP::where('id','<',8)->get();
                $status = 'semua';
                return view('kaprodi.kp_mhs', compact('mahasiswa_kps','status_kps','status'));
            }
            // return Auth::user()->roles()->first()->id;
          

    }

    public function mahasiswa_kp_bimbingan_terpilih($status)
    {
            if(Auth::user()->can('status_kp_bimbingan'))
            {
                $mahasiswa_kps = DB::table('dosen')
                                ->join('mahasiswa_kp','dosen.id','=','mahasiswa_kp.pembimbing')
                                ->join('kp','kp.id','=','mahasiswa_kp.proposal_id')
                                ->where('mahasiswa_kp.pembimbing',Auth::user()->id)
                                ->where('mahasiswa_kp.status',$status)
                                ->select('mahasiswa_kp.*')
                                ->paginate(10);
                $status_kps = StatusKP::where('id','<',8)->get();
                return view('kaprodi.kp_mhs', compact('mahasiswa_kps','status_kps','status'));
            }
            // return Auth::user()->roles()->first()->id;
          

    }

    public function lihat_proposal($id)
    {
            $proposal= Proposal::find($id);
       //      $mahasiswa_kp= MahasiswaKP::with('proposal.mahasiswas')->find($id);
       // dd($mahasiswa_kp);
       //   $proposal=$mahasiswa_kp->proposal;
         $instansi=$proposal->instansi;
         $anggotas=$proposal->mahasiswas;
        
        return view('kaprodi.lihat_proposal',compact('proposal','instansi','anggotas'));

    }
    public function store_catatan_proposal(Request $request,$id)

    {
        $proposal= Proposal::find($id);
        $proposal->status_proposal = $request->status_proposal;
        $proposal->catatan = $request->catatan;
        $proposal->save();
        return redirect()->route('proposal.mhs');
        
    }

    public function dosen_pembimbing()
    {
        if(Auth::user()->can('set_dosbing')) {
            // $mhs_kps = MahasiswaKP::paginate(10);

            $id_selesai = MahasiswaKP::where('status',4)->pluck('mahasiswa_id');
            $mhs_kps= MahasiswaKP::with('statuskp')->where('status',1)->orwhere('status',3)->whereNotIn('mahasiswa_id',$id_selesai)->get();
            $dosen= Dosen::all()->pluck('nama', 'id');
            $no = 1;
            $now = Carbon::now()->format('Y-m-d');
            $bebandosen = \DB::table('mahasiswa_kp')
                            ->where('pembimbing','!=',null)
                            ->whereNotIn('mahasiswa_id',$id_selesai)
                            ->groupBy('pembimbing')
                            ->select('pembimbing',\DB::raw('count(mahasiswa_id) as beban'))->get();
            return view('kaprodi.tambah_dosbing', compact('mhs_kps','dosen', 'no','bebandosen'));
        }
    }
    
    public function store_dosbing(Request $request)
    {
        // dd([$request->id, $request->pembimbing]);
        foreach ($request->id as $key => $value) {
            $mhs = MahasiswaKP::find($value);
            $mhs->pembimbing = $request->pembimbing[$key];
            $mhs->save();
        }

        /*$mhs_kps= MahasiswaKP::with('statuskp')->where('status',1)->get();
        $dosen= Dosen::all()->pluck('nama', 'id');
        $no = 1;*/
        return redirect()->route('tambah.dosbing');
    }

    public function kp_lewat(){
        $now = Carbon::now();
        // $kp_aman = MahasiswaKP::where('deadline_seminar','>',$now)->orWhere('status','5')->get()->pluck('id');
        // $mahasiswa_kp = MahasiswaKP::whereNotIn('id',$kp_aman)->get();
        $mahasiswa_kp = MahasiswaKP::where('deadline_seminar','<',$now)->where('status','!=','5')->where('status','!=','7')->get();
        // dd($mahasiswa_kp);
        

        return view('kaprodi.kp_lewat',compact('mahasiswa_kp'));
    }

    public function lihat_kegiatan_harian(){
        if(Auth::user()->can('edit_harian')){
            // $id = MahasiswaKP::all()->pluck('mahasiswa_id');
            // $kp_aman = MahasiswaKP::where('deadline_seminar','>',$now)->orWhere('status','5')->get()->pluck('id');
            // $mahasiswa_kp = MahasiswaKP::whereNotIn('id',$kp_aman)->get();
            //$mahasiswa_kp = Mahasiswa::whereIn('id',$id)->with('KegiatanHarian')->pluck('id');
            // $mahasiswa_kp = MahasiswaKP::with('KegiatanHarian')->pluck('id');
            // return $mahasiswa_kp;

            $mahasiswa_kp = DB::table('mahasiswa_kp')->join('harian','harian.mhs_kp_id','=','mahasiswa_kp.id')
                            ->select(DB::raw('distinct mahasiswa_kp.id'))->get();
            return view('kaprodi.lihat_kegiatan_harian',compact('mahasiswa_kp'));
        }
    }

    public function lihat_kegiatan_harian_bimbingan(){
        if(Auth::user()->can('lihat_kegiatan_harian')){
            $id_dosen = Auth::user()->id; 
            // $mhs_kp_id = MahasiswaKP::where('pembimbing',$id_dosen)->with('KegiatanHarian')->pluck('id');
            // $kp_aman = MahasiswaKP::where('deadline_seminar','>',$now)->orWhere('status','5')->get()->pluck('id');
            // $mahasiswa_kp = MahasiswaKP::whereNotIn('id',$kp_aman)->get();
            // $harian_mahasiswa = MahasiswaKP::whereIn('id',$mhs_kp_id)->with('KegiatanHarian')->pluck('id');
            $mahasiswa_kp = DB::table('mahasiswa_kp')->join('harian','harian.mhs_kp_id','=','mahasiswa_kp.id')
                            ->where('mahasiswa_kp.pembimbing',$id_dosen)
                            ->select(DB::raw('distinct mahasiswa_kp.id'))->get();

            return view('kaprodi.lihat_kegiatan_harian',compact('mahasiswa_kp'));
        }
    }

    public function kp_batal(Request $request){
        // dd($request);
        if(Auth::user()->can('batalkan_kp')) {
            $mahasiswa_kp = MahasiswaKP::find($request->id);
            $mahasiswa_kp->status = '5';
            $mahasiswa_kp->save();
            toast()->success("KP dibatalkan");

            return redirect()->route('kp.lewat');
        }
    }

    public function proposal_by_status($status){
        $array_proposal = Array();
        if($status == 'semua'){
            $proposals = Proposal::all()->paginate(10);
            foreach ($proposals as $key) {
                $data_proposal['id'] = $key->id;
                $data_proposal['judul'] = $key->judul;
                if($key->instansi){
                    $data_proposal['instansi'] = $key->instansi->nama;
                } else{
                    $data_proposal['instansi'] = '';
                }

                if($key->status_p){
                    $data_proposal['status'] = $key->status_p->status;
                } else{
                    $data_proposal['status'] = '';
                }

                array_push($array_proposal, $data_proposal);

                // $data_proposal['status'] = $key->status_p->status;
            }

        } else {
            $proposals = Proposal::where('status_proposal',$status)->get();
            foreach ($proposals as $key) {
                $data_proposal['id'] = $key->id;
                $data_proposal['judul'] = $key->judul;
                $data_proposal['instansi'] = $key->instansi->nama;
                $data_proposal['status'] = $key->status_p->status;
                // $data_proposal['link'] = $proposals->links();
                array_push($array_proposal, $data_proposal);
            }


        }
        return $array_proposal;
    }

    public function kp_by_status($status){
        $array_proposal = Array();
        if($status == 'semua'){
            $proposals = MahasiswaKP::all();
            foreach ($proposals as $key) {
                $data_proposal['mahasiswa_id'] = $key->mahasiswa_id;
                
                if($key->mahasiswa_kp){
                    $data_proposal['nama'] = $key->mahasiswa_kp->nama;
                } else{
                    $data_proposal['nama'] = '';
                }

                if($key->proposal->instansi){
                    $data_proposal['instansi'] = $key->proposal->instansi->nama;
                } else{
                    $data_proposal['instansi'] = '';
                }

                if($key->statuskp){
                    $data_proposal['status'] = $key->statuskp->status_kp;
                } else{
                    $data_proposal['status'] = '';
                }

                $data_proposal['mulai_kp'] = $key->mulai_kp;
                $data_proposal['selesai_kp'] = $key->selesai_kp;

                array_push($array_proposal, $data_proposal);

                // $data_proposal['status'] = $key->status_p->status;
            }

        } else {
            $proposals = MahasiswaKP::where('status',$status)->get();
            foreach ($proposals as $key) {
                $data_proposal['mahasiswa_id'] = $key->mahasiswa_id;
                
                if($key->mahasiswa_kp){
                    $data_proposal['nama'] = $key->mahasiswa_kp->nama;
                } else{
                    $data_proposal['nama'] = '';
                }

                if($key->proposal->instansi){
                    $data_proposal['instansi'] = $key->proposal->instansi->nama;
                } else{
                    $data_proposal['instansi'] = '';
                }

                if($key->statuskp){
                    $data_proposal['status'] = $key->statuskp->status_kp;
                } else{
                    $data_proposal['status'] = '';
                }

                $data_proposal['mulai_kp'] = $key->mulai_kp;
                $data_proposal['selesai_kp'] = $key->selesai_kp;

                array_push($array_proposal, $data_proposal);

                // $data_proposal['status'] = $key->status_p->status;
            }

        }
        return $array_proposal;
    }


}

