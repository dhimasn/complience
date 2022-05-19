<?php

namespace App\Http\Controllers;

use App\Helpers\HighRisk;
use App\Helpers\ProductHelper;
use App\Models\Complience;
use Illuminate\Http\Request;
use Session;


class HighRiskController extends Controller
{
    private $highrisk;

    public function __construct()
    {
        $this->highrisk = new HighRisk();
    }
    
    public function index(){
        $productHelper = new ProductHelper();

        $products = $productHelper->getAllProducts(2);
        
        $result = array(
            'nomor_she' => '',
            'model' =>'',
            'merek' => '',
            'stars_rating' => '',
            'eer' => '',
            'cspf' => '',
            'compressor_type' => '',
            'risk_rating' => '',
            'verification_result' => '',
            'volume_produk' => ''
        );
        
        $eer  = $this->highrisk->refrenceByidKriteria(1);

        $cspf = $this->highrisk->refrenceByidKriteria(2);

        if(!empty($products)){
            
            foreach($products as $pdt){

                $result['risk_rating'] = 0;
                $result['nomor_she'] = $pdt['No. Registrasi/No. SHE'];
                $result['model'] = $pdt['Model'];
                $result['merek'] = $pdt['Merek'];
                $result['stars_rating'] = $pdt['Rating Bintang (1-5)'];
                $result['compressor_type'] = $pdt['Tipe'];
                
                if(!empty($pdt['Nilai Efisiensi (EER/CSPF)'])){

                    //find nilai eer & cspf
                    $this->eeRcspF($eer, $cspf, $pdt, $result);

                    //find history complience high risk
                    $she = $this->highrisk->getReportByShe($pdt);
                    if(!empty($she)){
                        $result['risk_rating'] += $she->bobot;
                    }

                    //find get bobot volume produksi
                    if($pdt->totalProduk){

                    }
                }                
            }
        }
        
        return view('pages.highrisk.index', compact('result'));
    }

    public function report(){
        $highrisk = $this->highrisk->report();
        return view('pages.highrisk.report', compact('highrisk'));
    }

    public function addReport(){
        
        //get no she
        $productHelper = new ProductHelper();
        $products = $productHelper->getAllProducts(2);
        //get merek
        $merek = $this->highrisk->groupByMerek();
        //get case
        $kriteria = $this->highrisk->refrence();

        if(!empty($kriteria)){

            if($kriteria[2]){
                $i = 0; 
                $result = array();
                $bobot[] = explode(",", $kriteria[2]->nol);
                $bobot[] = explode(",", $kriteria[2]->satu);
                $bobot[] = explode(",", $kriteria[2]->dua);
                $bobot[] = explode(",", $kriteria[2]->tiga);
                
                foreach($bobot as $bbt){  
                    foreach($bbt as $bt){
                        $result[] = array(
                            'kriteria' => $bt,
                            'bobot' => $i
                        );
                    }$i++;
                } 
            }
        }
        return view('pages.highrisk.tambahreport', compact('products','result', 'merek'));
        
    }

    public function simpanReport(Request $request){
         //update database
         $kriteria = $this->highrisk->addReport($request);
         if($kriteria){
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return redirect()->route('highrisk.report');
    }

    public function volume(){
        $highrisk = Complience::where('status', 1)->where('kegiatan', 1)->orderBy('updated_at', 'desc')->get();
        return view('pages.highrisk.volume', compact('highrisk'));
    }

    public function kriteria(){
        $highrisk = $this->highrisk->refrence();
        return view('pages.highrisk.kriteria', compact('highrisk'));
    }

    public function updateKriteria($id){
        $highrisk = $this->highrisk->refrenceByid($id);
        return view('pages.highrisk.updatekriteria', compact('highrisk'));
    }

    public function simpanKriteria(Request $request){
        //update database
        $kriteria = $this->highrisk->updateDataKriteria($request);
        if($kriteria){
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return redirect()->route('highrisk.kriteria');
    }

    public function eeRcspF($eer, $cspf, $pdt, $result){

        $eerAC = (float) $pdt['Nilai Efisiensi (EER/CSPF)'];

        if($eerAC > (float) substr($eer['nol'],1)){ // > 8.755
            $result['eer'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 0;
        }

        if($eerAC <= (float) substr($eer['satu'],1,6) && $eerAC <= (float) substr($eer['satu'],8,11)){
            $result['eer'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 1;
        }

        if($eerAC <= (float) substr($eer['dua'],1,6) && $eerAC <= (float) substr($eer['dua'],8,11)){
            $result['eer'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 2;
        }

        if(5.9275 < $eerAC && $eerAC < (float) substr($eer['tiga'],1)){
            $result['eer'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 3;
        }

        $cspfAC = (float) $pdt['Nilai Efisiensi (EER/CSPF)'];

        if(5.9275 > $cspfAC && $cspfAC > (float) substr($cspf['nol'],1)){ // >3.25
            $result['risk_rating'] = 0;
            $result['cspf'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 0;
        }

        if($cspfAC <= (float) substr($cspf['satu'],1,6) && $cspfAC <= (float) substr($cspf['satu'],8,11)){
            $result['risk_rating'] = 0;
            $result['cspf'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 1;
        }

        if($cspfAC <= (float) substr($cspf['dua'],1,6) && $cspfAC <= (float) substr($cspf['dua'],8,11)){
            $result['risk_rating'] = 0;
            $result['cspf'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 2;
        }

        if($cspfAC < (float) substr($cspf['tiga'],1)){
            $result['risk_rating'] = 0;
            $result['cspf'] = $pdt['Nilai Efisiensi (EER/CSPF)'];
            $result['risk_rating'] += 3;
        }

    }
}