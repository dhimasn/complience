<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Complience extends Model
{
    protected $primaryKey = 'record_id';
    
    public $incrementing = false;

    protected $table = 'complience';
    
}
