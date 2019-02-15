<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KegiatanHarian extends Model
{
    protected $table = 'harian';

    public function mhs_kp(){
    	return $this->belongsTo('App\mahasiswaKP','mhs_kp_id');
    }
}
