<?php

namespace App; 

use Illuminate\Database\Eloquent\Model;

class Proposal extends Model
{
    protected $table = 'kp';

    public function instansi()
    {
        return $this->belongsTo('App\Instansi', 'instansi_id', 'id');
    }
    public function status_p()
    {
        return $this->belongsTo('App\StatusProposal', 'status_proposal','id');
    }

    public function mahasiswas()
    {
    	return $this->hasMany('App\MahasiswaKP','proposal_id','id');
    }

    public function get_file_balasan(){
        $file_balasan = $this->surat_balasan;
        $storage_file = null;
        if($file_balasan){
            $arrFiles = explode("//", $file_balasan);
            // $storage_file = "App/".$arrFiles[0].'/'.$arrFiles[1];
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_balasan(){
        $file_balasan = $this->surat_balasan;
        $storage_file = null;
        if($file_balasan){
            $arrFiles = explode("//", $file_balasan);
            // $storage_file = "App/".$arrFiles[0].'/'.$arrFiles[1];
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }
}
