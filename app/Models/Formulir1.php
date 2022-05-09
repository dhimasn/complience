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
    public function formulir3(){
        return $this->hasOne(Formulir3::class, 'record_id', 'record_id');
    }
}
