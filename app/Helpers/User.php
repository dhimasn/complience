<?php

namespace App\Helpers;

use App\Models\LabUji;
use App\Models\UserRoleDB;
use App\Models\UserDB;
use DateTime;
use stdClass;
use Exception;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class User
{
    public function __construct()
    {
        
    }

    public function createUser($dt, $role){
        $result = new UserDB();
        $result->username = $dt->input('username');
        $result->name = $dt->input('name');
        $result->id_user_role = $role;
        $result->email = $dt->input('email');
        $result->password =bcrypt($dt->input('password'));
        $result->save();
        return $result;
           
    }

    public function createUserLab($dt, $role){
        $result = new UserDB();
        $result->username = $dt->input('username');
        $result->name = $dt->input('name');
        $result->id_user_role = $role;
        $result->id_lab =$dt->input('id_lab');
        $result->email = $dt->input('email');
        $result->password =bcrypt($dt->input('password'));
        $result->save();
        return $result;
           
    }


    public function getUserBynameUserandRole($dt, $role){
        $result = UserDB::where('username', $dt->input('username'))
        ->orWhere('email',$dt->input('email'))
        ->where('id_user_role', $role)
        ->first();
        return $result;
    }

    public function getListLabRole(){
        $result = LabUji::get();
        return $result;
    }

    public function getListDataUser(){
        $result = UserDB::join('user_roles','user_roles.id','=','users.id_user_role')
        ->leftjoin('lab_ujis','lab_ujis.id','=','users.id_lab')
        ->get();
        return $result;
    }

    public function getUserByUserName($username){
        $result = UserDB::where('username', $username)
            ->first();
        return $result;
    }

    public function deleteDataUser($username){
        $result = UserDB::where('username', $username)->delete();
        return $result;
    }

    public function updateDataUser($dt){
      
        $result = UserDB::where('username', $dt->input('username'));
        //$result->username = $dt->input('username');
        $result->name = $dt->input('name');
        $result->id_lab =$dt->input('id_lab');
        $result->email = $dt->input('email');
        $result->password =bcrypt($dt->input('password'));
        $result->save();
        return $result;
    }

   
}