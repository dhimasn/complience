<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RoundRobin extends Model
{
    protected $primayKey = 'id_round_robin';
    protected $table = 'round_robin';
}
