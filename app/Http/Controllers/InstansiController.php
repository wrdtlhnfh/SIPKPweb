<?php

namespace App\Http\Controllers;

use App\Instansi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class InstansiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()->can('kelola_instansi')){
            $instansis = Instansi::paginate(10);
            return view('admin.instansi.index_instansi', compact('instansis'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()->can('kelola_instansi')){
            return view('admin.instansi.create_instansi');
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
            'nama' => 'required|unique:instansi',
            'lokasi'  => 'required'
        ]);

       
        $instansi                 = new Instansi();
        
        $instansi->nama            = $request->input('nama');
        $instansi->lokasi            = $request->input('lokasi');
        
        if($instansi->save())
        {
            toast()->success('Data instansi berhasil ditambahkan');
           
            return redirect()->route('instansi.index');
        }
        else
        {
            toast()->error('Data instansi gagal ditambahkan');
            return redirect()->route('instansi.create');
        }
    }
    

    

    /**
     * Display the specified resource.
     *
     * @param  \App\Instansi  $instansi
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        if(Auth::user()->can('kelola_instansi')){
            $instansi= Instansi::find($id);

            return view('admin.instansi.show_instansi',compact('instansi'));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Instansi  $instansi
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::user()->can('kelola_instansi')){
            $instansi = Instansi::find($id);
            return view('admin.instansi.edit_instansi', compact('instansi'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Instansi  $instansi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
           
            'nama'      => 'required',
           
            'lokasi'  => 'required'
        ]);

        $instansi                  = Instansi::find($id);
        $instansi->nama            = $request->input('nama');
        $instansi->lokasi           = $request->input('lokasi');
        

        if($instansi->save())                    
        {
            toast()->success('Data instansi berhasil diperbaharui');
            
            return redirect()->route('instansi.index');
        }
        else
        {
            toast()->error('Data instansi gagal diperbaharui');
            return redirect()->route('instansi.edit', ['id' => $instansi->id]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Instansi  $instansi
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $instansi = Instansi::find($id);
        $instansi->delete();
       
        

        toast()->success('Data instansi berhasil dihapus');

        return redirect()->route('instansi.index');
    }
}
