<?php

namespace App\Http\Controllers;

use App\KegiatanHarian;
use App\MahasiswaKP;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use \Carbon\Carbon;

class KegiatanHarianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            // $now = date("Y-m-d");
        if(Auth::user()->can('kegiatan_harian')) {
            $user = Auth::user();       
            $kegiatan_harians = KegiatanHarian::paginate(10);
            $id_mhs = DB::table('mahasiswa_kp')->where('mahasiswa_id', $user['id'])->value('id');
            $harian_mahasiswas = KegiatanHarian::all()->where('id_mhs', '=', $id_mhs);
            
            $now = Carbon::now()->format('Y-m-d');
            $kp = DB::table('mahasiswa_kp')->where('mahasiswa_id', $user['id'])->where('mulai_kp','<=',$now)->get();

          // dd( $harian_mahasiswas);
            // dd( $harians);
            // $harian_mhs = DB::table('kegiatan_harian')->where('id', $user['id'])->value('id');
            // dd($harian_mhs);
            return view('mahasiswa.kegiatanharian.index_harian', compact('kegiatan_harians', 'user','mahasiswa_kp','harian_mahasiswas','harians','kp'));
        }
    }

    public function tulis_harian($id)
    {
            // $now = date("Y-m-d");
            $mhs_kp = MahasiswaKP::find($id);
            $user = Auth::user();       
            // $kegiatan_harians = KegiatanHarian::paginate(10);
            $id_mhs = DB::table('mahasiswa_kp')->where('mahasiswa_id', $user['id'])->value('id');
            $harian_mahasiswas = KegiatanHarian::where('mhs_kp_id', '=', $id)->paginate(10);
            // return $harian_mahasiswas;
            $now = Carbon::now()->format('Y-m-d');
            $kp = DB::table('mahasiswa_kp')->where('mahasiswa_id', $user['id'])->where('mulai_kp','<=',$now)->get();
            $endkp = DB::table('mahasiswa_kp')->where('mahasiswa_id', $user['id'])->where('selesai_kp','<=',$now)->get();
           

          // dd( $harian_mahasiswas);
            // dd( $harians);
            // $harian_mhs = DB::table('kegiatan_harian')->where('id', $user['id'])->value('id');
            // dd($harian_mhs);
            return view('mahasiswa.kegiatanharian.tulis_harian', compact('user','mahasiswa_kp','harian_mahasiswas','harians','kp','mhs_kp','endkp'));
        
    }

    public function cetak()
    {
            $user = Auth::user();
            $mhs = MahasiswaKP::where('mahasiswa_id',$user->id)->first();      
            $harian_mahasiswas = KegiatanHarian::where('mhs_kp_id',$mhs->id)->get();
            
            return view('mahasiswa.kegiatanharian.cetak', compact('user','mhs','harian_mahasiswas'));
        
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
        $request->validate([
            'hari_tanggal' => 'required', 
            'kegiatan'  => 'required',
            'id'  => 'required'
        ]);

       
        $kegiatan_harian = new KegiatanHarian();
        $kegiatan_harian->hari_tanggal = $request->input('hari_tanggal');
        $kegiatan_harian->kegiatan = $request->input('kegiatan');
        $kegiatan_harian->mhs_kp_id= $request->mhs_kp_id;

        $cari_kegiatan_harian = KegiatanHarian::where('mhs_kp_id',$kegiatan_harian->mhs_kp_id)
                                    ->where('hari_tanggal',$kegiatan_harian->hari_tanggal)->get();

        if(count($cari_kegiatan_harian) > 0){
            toast()->error('Kegiatan Harian Sudah Ada');
            return redirect('tulis_harian/'.$request->mhs_kp_id);            
        }
        
        if($kegiatan_harian->save())
        {
            toast()->success('Kegiatan Harian berhasil ditambahkan');
           
            return redirect('tulis_harian/'.$request->mhs_kp_id);
        }
        else
        {
            toast()->error('Data kegiatan_harian gagal ditambahkan');
            return redirect()->route('kegiatan_harian.index_harian');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\KegiatanHarian  $kegiatanHarian
     * @return \Illuminate\Http\Response
     */
    public function show(KegiatanHarian $kegiatanHarian)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\KegiatanHarian  $kegiatanHarian
     * @return \Illuminate\Http\Response
     */
    public function edit(KegiatanHarian $kegiatanHarian)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\KegiatanHarian  $kegiatanHarian
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, KegiatanHarian $kegiatanHarian)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\KegiatanHarian  $kegiatanHarian
     * @return \Illuminate\Http\Response
     */
    public function destroy(KegiatanHarian $kegiatanHarian)
    {
        //
    }

    public function edit_harian($id){
        $harian = KegiatanHarian::find($id);
        return view('admin.kegiatan_harian.edit',compact('harian'));
    }

    public function update_harian(Request $request){
        // return $request->id;
        $harian = KegiatanHarian::find($request->id);
        $harian->kegiatan = $request->kegiatan;
        $harian->save();

        return redirect('harian_mahasiswa/'.$harian->mhs_kp_id);
    }

    

}
