<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use PDO;

class Complience extends Model
{
    protected $primaryKey = 'record_id';
    
    public $incrementing = false;

    protected $table = 'complience';
    
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }

    public function formulir1(){
        return $this->belongsTo(Formulir1::class, 'record_id', 'record_id');
    }
    
}
