<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Uji_petik extends Model
{
    protected $table = 'uji_petik';
    public function complience(){
        return $this->hasOne(Complience::class, 'record_id', 'record_id');
    }
    public function formulir3(){
        return $this->hasOne(Formulir3::class, 'record_id', 'record_id');
    }
    public function formulir1(){
        return $this->hasOne(Formulir1::class, 'record_id', 'record_id');
    }
}
