<?php

namespace App\Helpers;

use App\Http\Controllers\Controller;

class ProductResponse extends Controller 
{
    public static function responseProduk($data) {

        $arr_form_data = array();

        $dt = json_decode($data['form_data'], true);

            //LOKASI PENGAWASAN

            if(isset($dt[8])){
                $arr_form_data['lp1'] = $dt[8];
            }else{
                $arr_form_data['lp1'] = "";
            }

            if(isset($dt[5])){
                $arr_form_data['lp2'] = $dt[5];
            }else{
                $arr_form_data['lp2'] = "";
            }
                
            if(isset($dt[6])){
                $arr_form_data['lp3'] = $dt[6];
            }else{
                $arr_form_data['lp3'] = "";
            }

            if(isset($dt[7])){
                $arr_form_data['lp4'] = $dt[7];
            }else{
                $arr_form_data['lp4'] = "";
            }

            if(isset($dt[4])){
                $arr_form_data['lp5'] = $dt[4];
            }else{
                $arr_form_data['lp5'] = "";
            }

            if(isset($dt[170])){
                $arr_form_data['lp6'] = $dt[170];
            }else{
                $arr_form_data['lp6'] = "";
            }

            if(isset($dt[9])){
                $arr_form_data['lp7'] = $dt[9];
            }else{
                $arr_form_data['lp7'] = "";
            }

            //TENAGA PENJUAL

            if(isset($dt[10])){
                $arr_form_data['tp1'] = $dt[10];
            }else{
                $arr_form_data['tp1'] = "";
            }
            
            if(isset($dt[11])){
                $arr_form_data['tp2'] = $dt[11];
            }else{
                $arr_form_data['tp2'] = "";
            }

            if(isset($dt[12])){
                $arr_form_data['tp3'] = $dt[12];
            }else{
                $arr_form_data['tp3'] = "";
            }

            if(isset($dt[13])){
                $arr_form_data['tp4'] = $dt[13];
            }else{
                $arr_form_data['tp4'] = "";
            }

            if(isset($dt[14])){
                $arr_form_data['tp5'] = $dt[14];
            }else{
                $arr_form_data['tp5'] = "";
            }

            //produk compliance
            if(isset($dt[171])){
                $arr_form_data['pc1'] = $dt[171];
            }else{
                $arr_form_data['pc1'] = "";
            }

            if(isset($dt[16])){
                $arr_form_data['pc2'] = $dt[16];
            }else{
                $arr_form_data['pc2'] = "";
            }

            if(isset($dt[23])){
                $arr_form_data['pc3'] = $dt[23];
            }else{
                $arr_form_data['pc3'] = "";
            }

            if(isset($dt[18])){
                $arr_form_data['pc4'] = $dt[18];
            }else{
                $arr_form_data['pc4'] = "";
            }

            if(isset($dt[30])){
                $arr_form_data['pc5'] = $dt[30];
            }else{
                $arr_form_data['pc5'] = "";
            }

            if(isset($dt[57])){
                $arr_form_data['pc6'] = $dt[57];
            }else{
                $arr_form_data['pc6'] = "";
            }

            if(isset($dt[53])){
                $arr_form_data['pc7'] = $dt[53];
            }else{
                $arr_form_data['pc7'] = "";
            }

            if(isset($dt[26])){
                $arr_form_data['pc8'] = $dt[26];
            }else{
                $arr_form_data['pc8'] = "";
            }

            if(isset($dt[19])){
                $arr_form_data['pc9'] = $dt[19];
            }else{
                $arr_form_data['pc9'] = "";
            }

            if(isset($dt[20])){
                $arr_form_data['pc10'] = $dt[20];
            }else{
                $arr_form_data['pc10'] = "";
            }

            if(isset($dt[21])){
                $arr_form_data['pc11'] = $dt[21];
            }else{
                $arr_form_data['pc11'] = "";
            }

            if(isset($dt[22])){
                $arr_form_data['pc12'] = $dt[22];
            }else{
                $arr_form_data['pc12'] = "";
            }

            if(isset($dt[24])){
                $arr_form_data['pc13'] = $dt[24];
            }else{
                $arr_form_data['pc13'] = "";
            }

            //LTHE
            if(isset($dt[31])){
                $arr_form_data['lthe1'] = $dt[31];
            }else{
                $arr_form_data['lthe1'] = "";
            }

            if(isset($dt[32])){
                $arr_form_data['lthe2'] = $dt[32];
            }else{
                $arr_form_data['lthe2'] = "";
            }

            if(isset($dt[33])){
                $arr_form_data['lthe3'] = $dt[33];
            }else{
                $arr_form_data['lthe3'] = "";
            }

            if(isset($dt[34])){
                $arr_form_data['lthe4'] = $dt[34];
            }else{
                $arr_form_data['lthe4'] = "";
            }

            if(isset($dt[35])){
                $arr_form_data['lthe5'] = $dt[35];
            }else{
                $arr_form_data['lthe5'] = "";
            }  
                
            //REGULASI LAIN

            if(isset($dt[38])){
                $arr_form_data['rl1'] = $dt[38];
            } else{
                $arr_form_data['rl1'] = "";
            }
            
            if(isset($dt[39])){
                $arr_form_data['rl2'] = $dt[39];
            } else{
                $arr_form_data['rl2'] = "";
            }
            
            if(isset($dt[40])){
                $arr_form_data['rl3'] = $dt[40];
            }else{
                $arr_form_data['rl3'] = "";
            } 

            if(isset($dt[41])){
                $arr_form_data['rl4'] = $dt[41];
            }else{
                $arr_form_data['rl4'] = "";
            } 

            if(isset($dt[36])){
                $arr_form_data['rl5'] = $dt[36];
            }else{
                $arr_form_data['rl5'] = "";
            } 
                
            if(isset($dt[37])){
                $arr_form_data['rl6'] = $dt[37];
            }else{
                $arr_form_data['rl6'] = "";
            }
        
        return $arr_form_data;

    }
    
}