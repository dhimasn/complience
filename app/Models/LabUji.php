<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LabUji extends Model
{
    protected $table = 'lab_ujis';

    protected $primaryKey="id";

    protected $fillable = ['nama'];
}
