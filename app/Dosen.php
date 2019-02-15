<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    protected $table = "dosen";

    protected $dates = ['tanggal_lahir'];
    public function user()
    {
    	return $this->belongsTo(User::class, 'id');
    }

	public function mhs_bimbingan()
    {
    	return $this->hasMany('App\MahasiswaKP','pembimbing','id');
    }
    


}
