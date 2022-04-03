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
    
}
