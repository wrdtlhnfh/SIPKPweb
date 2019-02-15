<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instansi extends Model
{
    protected $table = 'instansi';

    public function instansi()
    {
        return $this->hasMany(Proposal::class);
    }
}
