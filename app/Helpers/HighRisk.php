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
        $data = DB::table('complience')
            ->leftJoin('formulir_1', 'formulir_1.record_id', '=', 'complience.record_id')
            ->get();
        return $data;
    }

    public function report(){
        $data = HistoryComplience::get();
        return $data;
    }

    public function addReport($request){
        $result = new HistoryComplience();
        $result->no_she = $request->input('nomor_she');
        //$result->model = $request->input('model');
        $result->merek = $request->input('merek');
        $result->ketidaksesuaian = substr($request->input('kriteria'),0,-1);
        $result->lembaga_terkait = $request->input('lembaga');
        $result->pengawas_id = $request->input('inspektur');
        $result->bobot = substr($request->input('kriteria'),-1);
        $result->save();
        return $result; 
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
                        'dua'=> $dt->input('tiga')
                     ]);
        return $result;
    }

    public function refrence(){
        $data = MasterHighRiskDB::get();
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

    public function refrenceByidKriteria($idKriteria){
        $data = MasterHighRiskDB::where('id_kriteria', $idKriteria)->first();
        return $data;
    }
   
}