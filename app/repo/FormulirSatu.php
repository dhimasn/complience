<?php

namespace App\Repo;

use App\Helpers\GeneralHelper;
use App\Models\Complience;
use App\Models\FormData;
use App\Models\Formulir1;
use DateTime;
use stdClass;
use Exception;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class FormulirSatu
{
    public function __construct()
    {
        
    }

    public function getFormData(){
        $result = FormData::where('jenis_form', 1)->get();
        return $result;
    }

    public function createCompliance($record_id, $data_request){
        $complience = new Complience();
        $complience->record_id = $record_id;
        $complience->product_id = $data_request['id'];
        $complience->pengawas_id = 2;
        $complience->no_she = $data_request['pc1'];
        $complience->teknologi = $data_request['pc4'];
        $complience->kegiatan = 2;
        $complience->status = 1; // RRT
        $complience->save();
    }

    public function createFormulirSatu($record_id, $arr_form_data){
        $store = new Formulir1();
        $store->record_id = $record_id;
        $store->pengawas_id = 2; // dummy
        $store->form_data = json_encode($arr_form_data);
        $store->save();
    }

    public function getListDataProduk(){
        $result = FormData::where('state', 1)
        ->with(['produk_inspeksi' => function($dataInspeksi){
            $dataInspeksi->where('state', 1);
        }])
        ->get();
        return $result;
    }

    public function getDetailProduk($detailId){
        $result = FormData::where('state', 1)
        ->where('id_data_produk', $detailId)
        ->with(['produk_inspeksi' => function($dataInspeksi){
            $dataInspeksi->where('state', 1);
        }])
        ->get();
        return $result;
    }

}