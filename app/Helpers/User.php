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

        $record_id = GeneralHelper::generateRecordId();
        $result = new UserDB();
        $result->record_id = $record_id;
        $result->username = $dt->input('username');
        $result->name = $dt->input('name');
        $result->id_user_role = $role;
        $result->email = $dt->input('email');
        $result->password =bcrypt($dt->input('password'));
        $result->save();
        return $result;
           
    }

    public function createUserLab($dt, $role){

        $record_id = GeneralHelper::generateRecordId();
        $result = new UserDB();
        $result->record_id = $record_id;
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
        $result = UserDB::leftjoin('user_roles','user_roles.id','=','users.id_user_role')
        ->leftjoin('lab_ujis','lab_ujis.id','=','users.id_lab')
        ->select(
            'users.record_id',
            'users.username',
            'users.email',
            'users.updated_at',
            'user_roles.category_user',
            'lab_ujis.nama'
        )
        ->get();
        return $result;
    }

    public function getUserByRecordId($record_id){
        $result = UserDB::where('record_id', $record_id)
            ->first();
        return $result;
    }

    public function deleteDataUser($record_id){
        $result = UserDB::where('record_id', $record_id)->delete();
        return $result;
    }

    public function updateDataUser($dt){
        $result = UserDB::where('record_id', $dt->input('record_id'))->first();
        if(isset($result->id_lab)){
            $result->id_lab =$dt->input('id_lab');
        }
        $result->username = $dt->input('username');
        $result->name = $dt->input('name');
        $result->email = $dt->input('email');
        $result->password =bcrypt($dt->input('password'));
        $result->save();
        return $result;
    }

   
}