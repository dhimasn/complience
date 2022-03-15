<?php

namespace App\Response;

use App\Http\Controllers\Controller;

class ProductResponse extends Controller 
{
    public static function responseProduk($data) {

        $data = [];
        $result = array(
            'id_data_produk'=>'',
            'Nomor SHE'=>'',
            'merek'=> '',
            'Kapasitas'=> '',
            'Manufaktur / importir'=> '',
            'Tanggal Produksi' => '',
            'Negara Asal'=>'',
            'Harga'=>'' 
        );
        
        foreach($data as $dt){
        
            if($dt->id_form_inspeksi){
                //   
            
            }
        
        }
        
        
        /*if(!empty($berita->tipe)){

            $tipe = mstDataTrait::getDetailByid($berita->tipe);
            if(!empty($tipe)){
                $berita->tipe = $tipe->namaData;
            }

        }

        if(!empty($berita->kategori)){

            $kategori = mstDataTrait::getDetailByid($berita->kategori);
            if(!empty($kategori)){
                $berita->kategori = $kategori->namaData;
            }

        }

        if(!empty($berita->jenis)){

            $jenis = mstDataTrait::getDetailByid($berita->jenis);
            if(!empty($jenis)){
                $berita->jenis = $jenis->namaData;
            }

        }

        if(!empty($berita->grup)){

            $grup = mstDataTrait::getDetailByid($berita->grup);
            if(!empty($grup)){
                $berita->grup = $grup->namaData;
            }

        }

        if(!empty($berita->perwakilan)){

            $perwakilan = mstDataTrait::getDetailByid($berita->perwakilan);
            if(!empty($perwakilan)){
                $berita->perwakilan = $perwakilan->namaData;
            }

        }

        if(!empty($berita->perwakilan)){

            $perwakilan = mstDataTrait::getDetailByid($berita->perwakilan);
            if(!empty($perwakilan)){
                $berita->perwakilan = $perwakilan->namaData;
            }

        }

        if(!empty($berita->golongan)){

            $golongan = mstDataTrait::getDetailByid($berita->golongan);
            if(!empty($golongan)){
                $berita->golongan = $golongan->namaData;
            }

        }*/

        //return $data;

    }

}