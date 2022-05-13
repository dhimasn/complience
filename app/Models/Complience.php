<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use PDO;

class Complience extends Model
{
    protected $primaryKey = 'record_id';
    
    public $incrementing = false;

    protected $table = 'complience';
    
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
    public function pengawas(){
        return $this->belongsTo(User::class, 'pengawas_id');
    }
    public function formulir1(){
        return $this->hasOne(Formulir1::class, 'record_id', 'record_id');
    }
    public function formulir2(){
        return $this->hasOne(Formulir2::class, 'record_id', 'record_id');
    }
    public function formulir3(){
        return $this->hasOne(Formulir3::class, 'record_id', 'record_id');
    }
    public function formulir4(){
        return $this->hasOne(Formulir4::class, 'record_id', 'record_id');
    }
    public function ujipetik(){
        return $this->hasOne(Uji_petik::class, 'record_id', 'record_id');
    }
    public function formulir4s(){
        return $this->hasMany(Formulir4::class, 'record_id', 'record_id');
    }
    public function formulir3s(){
        return $this->hasMany(Formulir3::class, 'record_id', 'record_id');
    }
    public function formulir2s(){
        return $this->hasMany(Formulir2::class, 'record_id', 'record_id');
    }
    
    
}
