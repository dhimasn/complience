<?php

namespace App\Response;

use App\Http\Controllers\Controller;

class ProductResponse extends Controller 
{
    public static function responseProduk($data) {        
        
        foreach($data as $produk_inpeksi){

            $produk_inpeksi['data_inspeksi_visual'] = [];
    
            $result = array(
                'Nomor SHE'=>'',
                'merek'=> '',
                'Kapasitas'=> '',
                'Manufaktur/importir'=> '',
                'Tanggal Produksi' => '',
                'Negara Asal'=>'',
                'Harga'=>'' 
            );
           
           foreach($produk_inpeksi['produk_inspeksi'] as $dt){
                
                if($data[0]['id_data_produk'] == $dt['id_data_produk']){
    
                    if($dt['id_form_inpeksi'] == 16){
                        $result['Nomor SHE'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 17){
                        $result['merek'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 18){
                        $result['Kapasitas'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 21){
                        $result['Manufaktur/importir'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 22){
                        $result['Tanggal Produksi'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 23){
                        $result['Negara Asal'] = $dt['data_produk_inspeksi'];
                    }
    
                    if($dt['id_form_inpeksi'] == 24){
                        $result['Harga'] = $dt['data_produk_inspeksi'];
                    }
    
                }
                
            }

            unset($produk_inpeksi['produk_inspeksi']);

            $produk_inpeksi['data_inspeksi_visual'] = $result;

        }

        return $data;

    }

}