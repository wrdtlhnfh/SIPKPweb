<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Proposal;
use App\MahasiswaKP;

use Auth;

class SekjurController extends Controller
{
    public function cek_proposal(){
    	$proposal = Proposal::where('status_proposal','!=','3')->get();
    	return view('sekjur.proposal',compact('proposal'));
    }

    public function daftar_nilai(){
        if(Auth::user()->can('acc_nilai')){
    	   $acc_nilai = true;
           $mkp = MahasiswaKP::where('status',8)
                    ->orWhere('status',11)->get();
    	   return view('sekjur.daftar_nilai',compact('mkp','acc_nilai'));
        } else if (Auth::user()->can('lihat_nilai')){
            $acc_nilai = false;
           $mkp = MahasiswaKP::where('nilai_kp','!=',null)->get();
           return view('sekjur.daftar_nilai',compact('mkp','acc_nilai'));
        }
    }

    public function daftar_nilai_bimbingan(){
        if(Auth::user()->can('daftar_nilai_bimbingan')){
            $acc_nilai = false;
            $mkp = MahasiswaKP::where('status',8)->orWhere('status',4)->where('pembimbing',Auth::user()->id)->get();
        }
        return view('sekjur.daftar_nilai',compact('mkp','acc_nilai'));
    }

    public function acc_nilai(Request $request){
    	$mkp = MahasiswaKP::find($request->id);
    	$mkp->status = 4;
    	$mkp->save();
    	return redirect('daftar_nilai');
    }
}
