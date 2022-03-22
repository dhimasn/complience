<?php

namespace App\Repo;

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

    public function getDataInspeksiByIdProdukIdFormInpeksi($idProduk, $idform){
        $result = DB::table('data_produk_inpeksi')->where('id_data_produk', $idProduk)
            ->where('id_form_inpeksi', $idform)
            ->first();
        return $result;
    }

    public function createDataInspeksi($data, $idProduk, $idform){
       
        $q = sprintf("INSERT into cmp_tools.data_produk_inpeksi(id_data_produk, id_form_inpeksi, data_produk_inspeksi, state) values(%d, '%s', '%s', %d)", 
        $idProduk, $idform, $data, 1);
        $a = DB::insert($q);
        return $a;
    }

    public function createDataInspeksiFile($idDataProduk, $idform, $base64){
        $q = sprintf("INSERT into cmp_tools.data_produk_inpeksi_file(Id_data_produk_inspeksi, Id_form_inpeksi, base64, state) values(%d, '%s', '%s', %d)", 
        $idDataProduk, $idform, $base64, 1);
        $a = DB::insert($q);
        return $a;
    }

    public function deleteDataProdukInspeksi($deleteId){

        $q = sprintf("UPDATE cmp_tools.data_produk_inpeksi set state=%d where id_data_produk=%d", 4, $deleteId);
        $a = DB::update($q);
        return $a;

    }

    public function getListDataProdukInspeksi(){
        $result = DB::table('data_produk_inpeksi')->where('state', 1)
        ->get();
        return $result;
    }

    public function createProdukMaster($dt){

        $result = null;

        $productMaster = $this->getProdukMasterByIdDataProduk($dt);
        if(empty($productMaster)){
            $result = DataProdukMasterDB::create([
                'id_data_produk' => $dt['id'],
                'date_added' => new DateTime(),
                'date_updated' => new DateTime(),
            ]);
        }

        return $result;

    }

    public function getProdukMasterByIdDataProduk($dt){
        $result = DataProdukMasterDB::where('id_data_produk', $dt['id'])
        ->first();
        return $result;
    }

    public function getListDataProduk(){
        $result = DataProdukMasterDB::where('state', 1)
        ->with(['produk_inspeksi' => function($dataInspeksi){
            $dataInspeksi->where('state', 1);
        }])
        ->get();
        return $result;
    }

    public function getDetailProduk($detailId){
        $result = DataProdukMasterDB::where('state', 1)
        ->where('id_data_produk', $detailId)
        ->with(['produk_inspeksi' => function($dataInspeksi){
            $dataInspeksi->where('state', 1);
        }])
        ->get();
        return $result;
    }

}