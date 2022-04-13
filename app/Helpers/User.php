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

    public function createUser($dt,$role){

        $result = UserDB::create([
            'username'=> $dt->input('username'),
            'name' =>  $dt->input('name'),
            'id_user_role' => $role,
            'email'=>  $dt->input('email'),
            'password' =>  bcrypt($dt->input('password')),
        ]);
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

    public function getUserByIdUser($id_user){
        $result = UserDB::where('id_user', $id_user)
            ->first();
        return $result;
    }

    public function deleteDataUser($idUser){
        $result = UserDB::where('state', 1)
                ->where('id_user',$idUser)
                ->update(['state' => 4]);
        return $result;
    }

    public function updateDataUser($dt){

        $result = UserDB::where('state', 1)
            ->where('id_user',$dt['id_user'])
            ->update(['nama_user' => $dt['nama_user'],
                'id_user_role'=> $dt['id_user_role']]);        
        return $result;
    }

   
}