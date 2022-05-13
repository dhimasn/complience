<?php

namespace App\Helpers;

use App\Helpers\GeneralHelper;
use App\Models\Complience;
use App\Models\FormData;
use App\Models\Formulir1;
use App\Models\Uji_petik;
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
        $complience->pengawas_id = $data_request['userid'];
        $complience->no_she = $data_request['pc1'];
        $complience->merek = $data_request['pc2'];
        $complience->teknologi = $data_request['pc4'];
        $complience->model = $data_request['pc3'];
        $complience->manufaktur = $data_request['pc9'];
        $complience->kode_produk = $data_request['pc10'];
        $complience->kapasitas = $data_request['pc6'];
        $complience->negara = $data_request['pc11'];
        $complience->harga = $data_request['pc12'];
        $complience->kegiatan = 1;
        $complience->status = 1;
        $complience->save();
    }

    public function createFormulirSatu($record_id, $arr_form_data, $data_request){
        
        
        $store = new Formulir1();
        $store->record_id = $record_id;
        $store->id_inspeksi_visual = $data_request['id'];
        $store->lokasi_pengawasan = $data_request['lp2'];
        $store->lat_long = $data_request['lp6'];
        $store->pengawas_id = $data_request['userid'];
        $store->form_data = json_encode($arr_form_data);
        $store->datetime_offline = $data_request['tanggal'];
        $store->save();
        
    }

    public function createFormulirSatuUjiPetik($form_1 , $arr_form_data, $data_request){
        
        $store = new Uji_petik();
        $store->record_id = $form_1->record_id;
        $store->id_inspeksi_visual = $form_1->id_inspeksi_visual;
        $store->lokasi_pengawasan = $form_1->lokasi_pengawasan;
        $store->lat_long = $form_1->lat_long;
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

    public function getListDataUjiPetik(){
        $result = Complience::where('status', 2)
        ->join('uji_petik', 'uji_petik.record_id', '=', 'uji_petik.record_id')
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

    public function getDetailUjiPetik($record_id){
        $result = Complience::where('status', 2)
        ->where('complience.record_id', $record_id)
        ->join('uji_petik', 'uji_petik.record_id', '=', 'complience.record_id')
        ->first();
        return $result;
    }

    public function getDetailFormulirSatu($produk_id){
        $result = Formulir1::where('id_inspeksi_visual', $produk_id)
        ->first();
        return $result;
    }

    public function updateFormulirSatu($form_1){
       
        $result = Complience::where('record_id', $form_1->record_id)
        ->update(['status' => 2,'kegiatan'=>2]);
        return $result;

    }

    public function constantaFormSatu($form){

        switch ($form) {

            //lokasi pengawasan
            case ($form->id == 8):
                $result = 'lp1';
                break;
            case ($form->id == 5):
                $result = 'lp2';
                break;
            case ($form->id == 6):
                $result = 'lp3';
                break;
            case ($form->id == 7):
                $result = 'lp4';
                break;
            case ($form->id == 4):
                $result = 'lp5';
                break;
            case ($form->id == 170):
                $result = 'lp6';
                break;
            case ($form->id == 9):
                $result = 'lp7';
                break;
            
            //tenaga penjual
            case ($form->id == 10):
                $result = 'tp1';
                break;
            case ($form->id == 11):
                $result = 'tp2';
                break;
            case ($form->id == 12):
                $result = 'tp3';
                break;
            case ($form->id == 13):
                $result = 'tp4';
                break;
            case ($form->id == 14):
                $result = 'tp5';
                break;
            
            //produk compliance
            case ($form->id == 171):
                $result = 'pc1';
                break;
            case ($form->id == 16):
                $result = 'pc2';
                break;
            case ($form->id == 23):
                $result = 'pc3';
                break;
            case ($form->id == 18):
                $result = 'pc4';
                break;
            case ($form->id == 30):
                $result = 'pc5';
                break;
            case ($form->id == 57):
                $result = 'pc6';
                break;
            case ($form->id == 53):
                $result = 'pc7';
                break;
            case ($form->id == 26):
                $result = 'pc8';
                break;
            case ($form->id == 19):
                $result = 'pc9';
                break;
            case ($form->id == 20):
                $result = 'pc10';
                break;
            case ($form->id == 21):
                $result = 'pc11';
                break;
            case ($form->id == 22):
                $result = 'pc12';
                break;
            case ($form->id == 24):
                $result = 'pc13';
                break;

            //LTHE
            case ($form->id == 31):
                $result = 'lthe1';
                break;
            case ($form->id == 32):
                $result = 'lthe2';
                break;
            case ($form->id == 33):
                $result = 'lthe3';
                break;
            case ($form->id == 34):
                $result = 'lthe4';
                break;
            case ($form->id == 35):
                $result = 'lthe5';
                break;

            //REGULASI LAIN
            case ($form->id == 38):
                $result = 'rl1';
                break;
            case ($form->id == 39):
                $result = 'rl2';
                break;
            case ($form->id == 40):
                $result = 'rl3';
                break;
            case ($form->id == 41):
                $result = 'rl4';
                break;
            case ($form->id == 36):
                $result = 'rl5';
                break;
            case ($form->id == 37):
                $result = 'rl6';
                break;
            default:
                $result = false; 
        }

        return $result;
        
    }

    public function mappingConstanta($data_request){
       
        //Tenaga penjual
        // 10
        if($data_request['tp1'] == 1){
            $data_request['tp1'] = "Ya";
        }
        
        if ($data_request['tp1'] == 2){
            $data_request['tp1'] = "Sedikit";
        }
        
        if ($data_request['tp1'] == 3){
            $data_request['tp1'] = "Tidak";
        }

        // 11
        if($data_request['tp2'] == 1){
            $data_request['tp2'] = "Tidak pernah";
        } 
        
        if ($data_request['tp2'] == 2){
            $data_request['tp2'] = "Jarang";
        }
        
        if ($data_request['tp2'] == 3){
            $data_request['tp2'] = "Sering";
        }

        if ($data_request['tp2'] == 4){
            $data_request['tp2'] = "Sangat Sering";
        }

        // 12
        if($data_request['tp3'] == 1){
            $data_request['tp3'] = "Mengembalikan produk pada pemasok untuk mencantumkan label";
        } 
        
        if ($data_request['tp3'] == 2){
            $data_request['tp3'] = "Menahan produk sampai produk pengganti berlabel diterima dari pemasok";
        }
        
        if ($data_request['tp3'] == 3){
            $data_request['tp3'] = "Tidak melakukan apa-apa - menjual produk seadanya";
        }

        // 13
        if($data_request['tp4'] == 1){
            $data_request['tp4'] = "Ya";
        } 
        
        if ($data_request['tp4'] == 2){
            $data_request['tp4'] = "Sering";
        }
        
        if ($data_request['tp4'] == 3){
            $data_request['tp4'] = "Kadang-kadang";
        }

        if ($data_request['tp4'] == 4){
            $data_request['tp4'] = "Tidak pernah";
        }

        // 14
        if($data_request['tp5'] == 1){
            $data_request['tp5'] = "Ya";
        } 
        
        if ($data_request['tp5'] == 2){
            $data_request['tp5'] = "Sebagian";
        }
        
        if ($data_request['tp5'] == 3){
            $data_request['tp5'] = "Tidak";
        }

        //lthe
        // 31
        if ($data_request['lthe1'] == 1){
            $data_request['lthe1'] = "Ya";
        }
        
        if ($data_request['lthe1'] == 2){
            $data_request['lthe1'] = "Tidak";
        }

        // 32
        if ($data_request['lthe2'] == 1){
            $data_request['lthe2'] = "Ya";
        }
        
        if ($data_request['lthe2'] == 2){
            $data_request['lthe2'] = "Tidak";
        }

        // Visibilitas LTHE 
        // 33
        if ($data_request['lthe3'] == 1){
            $data_request['lthe3'] = "Label jelas dan mudah terlihat";
        }
        
        if ($data_request['lthe3'] == 2){
            $data_request['lthe3'] = "Label kabur atau rusak karena tindakan produsen atau importir";
        }

        if ($data_request['lthe3'] == 3){
            $data_request['lthe3'] = "Label kabur atau rusak karena tindakan pengecer";
        }
        
        if ($data_request['lthe3'] == 4){
            $data_request['lthe3'] = "Label sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran";
        }

        if ($data_request['lthe3'] == 5){
            $data_request['lthe3'] = "Tidak berlaku - label tidak dibubuhkan";
        }

        // Kesesuaian visual LTHE 
        // 34
        if ($data_request['lthe4'] == 1){
            $data_request['lthe4'] = "Label terlihat benar dan sesuai dengan persyaratan";
        }

        if ($data_request['lthe4'] == 2){
            $data_request['lthe4'] = "Desain label salah (warna, ukuran, dll)";
        }

        if ($data_request['lthe4'] == 3){
            $data_request['lthe4'] = "Label tampaknya palsu";
        }

        if ($data_request['lthe4'] == 4){
            $data_request['lthe4'] = "Label tidak sesuai dengan model fisik produk";
        }

        if ($data_request['lthe4'] == 5){
            $data_request['lthe4'] = "Tidak berlaku - label tidak dibubuhkan";
        }

        //regulasi lainya
        // 38
        if ($data_request['rl1'] == 1){
            $data_request['rl1'] = "Ya";
        }

        if ($data_request['rl1'] == 2){
            $data_request['rl1'] = "Tidak yakin";
        }

        if ($data_request['rl1'] == 3){
            $data_request['rl1'] = "Tidak";
        }

        // 39
        if ($data_request['rl2'] == 1){
            $data_request['rl2'] = "Ya";
        }

        if ($data_request['rl2'] == 2){
            $data_request['rl2'] = "Tidak yakin";
        }

        if ($data_request['rl2'] == 3){
            $data_request['rl2'] = "Tidak";
        }

        // 40
        if ($data_request['rl3'] == 1){
            $data_request['rl3'] = "Ya";
        }

        if ($data_request['rl3'] == 2){
            $data_request['rl3'] = "Tidak yakin";
        }

        if ($data_request['rl3'] == 3){
            $data_request['rl3'] = "Tidak";
        }

        // 41
        if ($data_request['rl4'] == 1){
            $data_request['rl4'] = "Ya";
        }

        if ($data_request['rl4'] == 2){
            $data_request['rl4'] = "Tidak yakin";
        }

        if ($data_request['rl4'] == 3){
            $data_request['rl4'] = "Tidak";
        }

        // 36
        if ($data_request['rl5'] == 1){
            $data_request['rl5'] = "Label dan Produk Tampak Sesuai";
        }

        if ($data_request['rl5'] == 2){
            $data_request['rl5'] = "Label dan Produk Tampak Mencurigakan dan Memerlukan Penyelidikan Lebih lanjut";
        }

        if ($data_request['rl5'] == 3){
            $data_request['rl5'] = "Label dan Produk Tampak Mencurigakan dan direkomendasikan untuk pengujian verifikasi";
        }

       return $data_request;

    }

}