<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusProposal extends Model
{
     protected $table = 'status_proposal';

    public function proposal()
    {
        return $this->hasMany(Proposal::class);
    }

}
