<?php

namespace App\Repo;

use App\Models\FormInspeksiDB;
use App\Models\InspeksiDB;
use stdClass;
use Exception;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class InpeksiDb
{
    public function __construct()
    {
        
    }

    public function getRole($idRole){
        $result = FormInspeksiDB::where('id_form_role', $idRole)
        ->first();
        return $result;
    }

    public function getRoles($idRoles){
        $result = FormInspeksiDB::whereIn('id_form_role', $idRoles)
        ->get();
        return $result;
    }

    public function createDataInspeksi($data, $idProduk, $idform){

        $result = InspeksiDB::create([
            //'Id_data_produk_inspeksi' => 'London to Paris',
            'id_data_produk' => $idProduk,
            'id_form_inpeksi' => $idform,
            'data_produk_inspeksi' => $data,
            //'verication_result' => 'London to Paris',
            //'nomor_she' => 'London to Paris',
            //'notes' => 'London to Paris',
        ]);

        return $result;
    }
}