<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{

    protected $table = 'mahasiswa';

    protected $dates = ['tanggal_lahir'];


    public function user()
    {
    	return $this->belongsTo(User::class, 'id');
    }

    public function mahasiswa_kp(){
    	return $this->hasMany(MahasiswaKP::class, 'mahasiswa_id');
    }

    public function harian(){
        return $this->hasMany(KegiatanHarian::class, 'mhs_kp_id');
    }

    public function mhs_kp()
    {
        return $this->hasMany(MahasiswaKP::class);
    }

    public function gender(){
        if($this->jenis_kelamin == 1){
            return "Laki-Laki";
        } else {
            return "Perempuan";
        }
    }
}
