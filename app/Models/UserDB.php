<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserDB extends Model
{
    protected $table = 'users';

    protected $primaryKey="id";

    protected $fillable = ['username','name','id_user_role','id_lab','email','email_verified_at','password','remember_token'];
    
}
