<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusKP extends Model
{
    protected $table = 'status_kp';

    public function mhs_kp()
    {
        return $this->hasMany(MahasiswaKP::class);
    }
}
