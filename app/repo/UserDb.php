<?php

namespace App\Repo;
use stdClass;
use Exception;
use App\Helper\DoubleApo;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class UserDb
{
    private $double;
    public function __construct()
    {
        //$this->double = new DoubleApo();
    }

    public function Login($user_name, $password)
    {
        $model = new stdClass();
        $user_name = $this->double->Process($user_name);
        $q = sprintf("SELECT u.*, j.id as id_jabatan, j.nama_jabatan as jabatan, j.level as level_jabatan, j.id_unit_teknis from m_user u left join m_jabatan j on u.id_jabatan = j.id where u.user_name='%s'", $user_name);
        $users = DB::select($q);
        if($users == null)
        {
            $model->status = false;
            return $model;
        }
        else
        {            
            if (Hash::check($password, $users[0]->sandi))
            {
                $model->status = true;
                $model->id_user = $users[0]->id;
                $model->role = $users[0]->id_user_role;
                $model->email = $users[0]->email;
                $model->nama = $users[0]->nama;
                $model->jabatan = $users[0]->jabatan;
                $model->id_jabatan = $users[0]->id_jabatan;
                $model->level_jabatan = $users[0]->level_jabatan;
                $model->id_unit_teknis = $users[0]->id_unit_teknis;
                return $model;
            }
            else
            {
                $model->status = false;
                return $model;
            }
        }
    }
}