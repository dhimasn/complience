<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserDB extends Model
{
     /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'user';

    protected $primaryKey = 'id_user';
    
    protected $fillable = ['nama_user','id_user_role'];

    public $timestamps = false;
}
