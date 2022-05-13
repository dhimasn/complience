<?php

namespace App\Helpers;

use App\Models\HighRiskDB;
use DateTime;
use stdClass;
use Exception;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class HighRisk
{
    public function __construct()
    {
        
    }

    public function getListDataHighRisk(){
        $data = DB::table('complience')
            ->leftJoin('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
            ->get();
        return $data;
    }


    public function sync(){
        
        //join tabel
        $data = DB::table('complience')
            ->leftJoin('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
            ->get();

        if(!empty($data)){

            foreach($data as $dt){
                
                //calculate
                //$this->calculate($dt);

            }
           
        }

        //save data

    }

    public function calculate($dt){
        $result = [];
        //print_r(json_decode($dt->form_data));exit;
        //$formdata1 = $dt->
       
        //criteria 1

        //criteria 2

        //criteria 3
        // if(!empty($dt)){
            
        //     if($dt->harga < 10000){
        //         $resul[3] = 1;
        //     }else if($dt->harga < 10000){
        //         $resul[3] = 2;
        //     }else if($dt->harga < 10000){
        //         $resul[3] = 3;
        //     }
        // }

        //criteria 4

        //criteria 5

        //criteria 6

        //criteria 7

        //criteria 8

        //criteria 9

        //criteria 10

        //criteria 11

        //criteria 12

        //criteria 13

    }

    public function refrence(){
        $data = DB::table('master_high_risk')->get();
        return $data;
    }

    public function report(){
        $data = DB::table('history_complience_high_risk')->get();
        return $data;
    }
   
}