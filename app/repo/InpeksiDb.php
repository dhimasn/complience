<?php

namespace App\Repo;
use stdClass;
use Exception;
use App\Helper\DoubleApo;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class InpeksiDb
{
    private $double;
    public function __construct()
    {
        //$this->double = new DoubleApo();
    }

    public function getRole($idRole){
        $result = DB::table('form_inpeksi')
        ->where('id_form_role', $idRole)
        ->first();
        return $result;
    }

    public function getRoles($idRoles){
        $result = DB::table('form_inpeksi')
        ->whereIn('id_form_role', $idRoles)
        ->get();
        return $result;
    }

}