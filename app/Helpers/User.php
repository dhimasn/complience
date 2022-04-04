<?php

namespace App\Helpers;

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

    public function createUser($dt){

        $result = null;

        $user = $this->getUserBynameUserandRole($dt);

        if(empty($user)){
            $result = UserDB::create([
                'nama_user'=> $dt['nama_user'],
                'id_user_role' => $dt['id_user_role'],
                'state' => 1
            ]);
        }
        
        return $result;
    }


    public function getUserBynameUserandRole($dt){
        $result = UserDB::where('nama_user', $dt['nama_user'])
        ->where('id_user_role', $dt['id_user_role'])
        ->first();
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

    public function getListDataUser(){
        $result = UserDB::where('state', 1)
            ->get();
        return $result;
    }

}