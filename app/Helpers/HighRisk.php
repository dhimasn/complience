<?php

namespace App\Helpers;


use DateTime;
use stdClass;
use Exception;
use App\Models\HighRiskDB;
use App\Models\HistoryComplience;
use App\Models\MasterHighRiskDB;
use App\Models\Product;
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
        $data = HighRiskDB::get();
        return $data;
    }

    public function getListDataHighRiskCustom($kompressor, $bintang, $kp){
        $results = HighRiskDB::when($kompressor, function ($query, $kompressor) {
            return $query->where('compressor_type', $kompressor);
        })
        ->when($bintang, function ($query, $bintang) {
            return $query->where('bintang', $bintang);
        })
        ->when($kp, function ($query, $kp) {
            return $query->whereBetween('kapasitas', [$kp['a'],$kp['b']]);       
        })
        ->orderBy('risk_rating', 'desc')
        ->get();
        return $results;
    }

    public function report(){
        $data = HistoryComplience::get();
        return $data;
    }

    public function addReport($request){
        $result = new HistoryComplience();
        $result->no_she = $request->input('nomor_she');
        $result->merek = $request->input('merek');
        $result->ketidaksesuaian = substr($request->input('kriteria'),0,-1);
        $result->lembaga_terkait = $request->input('lembaga');
        $result->pengawas_id = $request->input('inspektur');
        $result->bobot = substr($request->input('kriteria'),-1);
        $result->save();
        return $result; 
    }

    public function getReportByShe($pdt){
        $data = HistoryComplience::where('no_she', $pdt['Nilai Efisiensi (EER/CSPF)'])->first();
        return $data;
    }

    public function refrenceByid($id){
        $data = MasterHighRiskDB::where('id', $id)->first();
        return $data;
    }

    public function updateDataKriteria($dt){
         $result = MasterHighRiskDB::where('id', $dt->input('id'))
                    ->update([
                        'kriteria'=> $dt->input('kriteria'),
                        'variabel_penilaian'=> $dt->input('variabel_penilaian'),
                        'nol'=> $dt->input('nol'),
                        'satu'=> $dt->input('satu'),
                        'dua'=> $dt->input('dua'),
                        'tiga'=> $dt->input('tiga')
                     ]);
        return $result;
    }

    public function refrence(){
        $data = MasterHighRiskDB::get();
        return $data;
    }

    public function refrenceByidKriteria($idKriteria){
        $data = MasterHighRiskDB::where('id_kriteria', $idKriteria)->first();
        return $data;
    }

    public function groupByMerek(){
        $data = Product::select('field_value')
                    ->where('field','field-0')
                    ->where('category_id',2)
                    ->groupBy('field_value')
                    ->get();
        return $data;
    }

    public function addHighrisk($newHigh,$highrisk){
        $high = $this->getHighRisk($newHigh['nomor_she']);
        if(!empty($high)){
            $result = HighRiskDB::where('no_she', $newHigh['nomor_she'])
            ->update([
                'no_she' => $newHigh['nomor_she'],
                'model' => $newHigh['model'],
                'merek' => $newHigh['merek'],
                'bintang' => $newHigh['stars_rating'],
                'volume' => $newHigh['volume_produk'],
                'kapasitas' => $newHigh['kapasitas'],
                'verification_result' => null,
                'risk_rating' => $newHigh['risk_rating'],
                'compressor_type' => $newHigh['compressor_type'],
                'form_data'=> json_encode($highrisk)
                ]);
            
        }else{
            $result = new HighRiskDB();
            $result->no_she = $newHigh['nomor_she'];
            $result->model = $newHigh['model'];
            $result->merek = $newHigh['merek'];
            $result->bintang = $newHigh['stars_rating'];
            $result->volume = $newHigh['volume_produk'];
            $result->kapasitas = $newHigh['kapasitas'];
            $result->verification_result = null;
            $result->risk_rating = $newHigh['risk_rating'];
            $result->compressor_type = $newHigh['compressor_type'];
            $result->form_data = json_encode($highrisk);
            $result->save();
        }
        return $result;
    }

    public function getHighRisk($nomor_she){
        $data = HighRiskDB::where('no_she', $nomor_she)->first();
        return $data;
    }


}