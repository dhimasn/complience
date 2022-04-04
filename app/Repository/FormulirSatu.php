<?php

namespace App\Repository;

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
        //$complience->product_id = $data_request['id'];
        $complience->pengawas_id = 2;
        $complience->no_she = $data_request['pc1'];
        $complience->merek = $data_request['pc2'];
        $complience->teknologi = $data_request['pc4'];
        $complience->model = $data_request['pc3'];
        $complience->manufaktur = $data_request['pc9'];
        $complience->kode_produk = $data_request['pc10'];
        $complience->kapasitas = $data_request['pc6'];
        $complience->negara = $data_request['pc11'];
        $complience->harga = $data_request['pc12'];
        //$complience->lab_uji = $data_request['pc4'];
        $complience->kegiatan = 2;
        $complience->status = 1;
        $complience->save();
    }

    public function createFormulirSatu($record_id, $arr_form_data, $data_request){
        
        $store = new Formulir1();
        $store->record_id = $record_id;
        $store->id_inspeksi_visual = $data_request['id'];
        $store->lokasi_pengawasan = $data_request['lp2'];
        $store->lat_long = $data_request['lp6'];
        $store->pengawas_id = 2; // dummy
        $store->form_data = json_encode($arr_form_data);
        $store->datetime_offline = $data_request['tanggal'];
        $store->save();
        
    }

    public function getListDataProduk(){

        $result = Complience::where('status', 1)
        ->join('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
        ->get();
        return $result;

    }

    public function getDetailProduk($record_id){
        $result = Complience::where('status', 1)
        ->where('complience.record_id', $record_id)
        ->join('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
        ->first();
        return $result;
    }

    public function getDetailFormulirSatu($produk_id){
        $result = Formulir1::where('id_inspeksi_visual', $produk_id)
        ->first();
        return $result;
    }

    // public function updateFormulirSatu(){
    //     $result = Complience::where('status', 1)
    //     ->where('complience.record_id', $record_id)
    //     ->join('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
    //     ->first();
    //     return $result;
    // }

}