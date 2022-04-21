<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Formulir1 extends Model
{
    protected $table = 'formulir_1';
    public function pengawas(){
        return $this->belongsTo(User::class, 'pengawas_id');
    }
}
