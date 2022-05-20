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

        $highrisk = [];
        
        $eer  = $this->highrisk->refrenceByidKriteria(1);

        $cspf = $this->highrisk->refrenceByidKriteria(2);

        //pangsa pasar
        $varProduksi = $this->highrisk->refrenceByidKriteria(5);

        $varProduksi1 = $this->highrisk->refrenceByidKriteria(6);

        if(!empty($products)){
            
            foreach($products as $pdt){

                $result = array(
                    'nomor_she' => '',
                    'model' =>'',
                    'merek' => '',
                    'stars_rating' => '',
                    'eer' => '',
                    'cspf' => '',
                    'compressor_type' => '',
                    'risk_rating' => 0,
                    'verification_result' => '',
                    'volume_produk' => ''
                );
                
                if(array_key_exists('No. Registrasi/No. SHE', $pdt)){
                   
                    $result['nomor_she'] = $pdt['No. Registrasi/No. SHE'];
                    $result['model'] = $pdt['Model'];
                    $result['merek'] = $pdt['Merek'];
                    $result['stars_rating'] = $pdt['Rating Bintang (1-5)'];
                    $result['compressor_type'] = $pdt['Tipe'];
                    
                    if(!empty($pdt['Nilai Efisiensi (EER/CSPF)'])){
                        //find nilai eer & cspf
                        $result = $this->eeRcspF($eer, $cspf, $pdt, $result);
                    }
                    
                    //find history complience high risk
                    $she = $this->highrisk->getReportByShe($pdt);
                    if(!empty($she)){
                        $result['risk_rating'] += $she->bobot;
                    }

                    //find get bobot volume produksi
                    if(!empty($pdt['totalProduk'])){

                        $tahun1 = 0;
                        $tahun2 = 0;

                        if(array_key_exists('2020', $pdt['totalProduk'])){
                            $tahun1 = $pdt['totalProduk'][2020];
                        }

                        if(array_key_exists('2021', $pdt['totalProduk'])){
                            $tahun2 = $pdt['totalProduk'][2021];
                        }

                        $ttlProduk = $tahun1+$tahun2;

                        $result['volume_produk'] = $ttlProduk;

                        if(!empty($pdt['Daya (watt)'])){

                            if((float) $pdt['Daya (watt)'] > 1103.25){
                                if($ttlProduk < 5000){
                                    $result['risk_rating'] += 0;
                                }

                                if($ttlProduk > 5000 && $ttlProduk < 10000){ //5,000-10,000
                                    $result['risk_rating'] += 1;
                                }

                                if($ttlProduk < 10000 && $ttlProduk < 15000){ //10,000-15,000
                                    $result['risk_rating'] += 2;
                                }

                                if($ttlProduk > 15000){
                                    $result['risk_rating'] += 3;
                                }
                            }

                            if((float) $pdt['Daya (watt)'] <= 1103.25){

                                if($ttlProduk < 15000){
                                    $result['risk_rating'] += 0;
                                }

                                if($ttlProduk < 15000 && $ttlProduk < 30000){
                                    $result['risk_rating'] += 1;
                                }

                                if($ttlProduk < 30000 && $ttlProduk < 50000){
                                    $result['risk_rating'] += 2;
                                }

                                if($ttlProduk > 50000){
                                    $result['risk_rating'] += 3;
                                }
                            }

                        }

                        //bobot incrrease
                        $result = $this->bobotIncrease($tahun1,$tahun2,$result);

                    }
                    
                    array_push($highrisk, $result); 
                }                
               
            }
        }
        //print_r(json_encode($highrisk));exit;
        return view('pages.highrisk.index', compact('highrisk'));
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

        $productHelper = new ProductHelper();

        $products = $productHelper->getAllProducts(2);

        foreach($products as $pdt){
            
        }
        
        //return view('pages.highrisk.volume', compact('highrisk'));
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

       
        $eerAC =  (float) $pdt['Nilai Efisiensi (EER/CSPF)'];
       
        if($eerAC >  (float) substr($eer['nol'],1)){ // > 8.755
            $result['eer'] = $eerAC;
            $result['risk_rating'] += 0;
        }

        if($eerAC > (float) substr($eer['satu'],1,6) && $eerAC < (float) substr($eer['satu'],8,11)){ //
            $result['eer'] = $eerAC;
            $result['risk_rating'] += 1;
        }

        if($eerAC > (float) substr($eer['dua'],1,6) && $eerAC <  (float) substr($eer['dua'],8,11)){
            $result['eer'] = $eerAC;
            $result['risk_rating'] += 2;
        }

        if($eerAC > 6 && $eerAC <  (float) substr($eer['tiga'],1)){
            $result['eer'] = $eerAC;
            $result['risk_rating'] += 3;
        }

        $cspfAC = (float) $pdt['Nilai Efisiensi (EER/CSPF)'];
      
        if($cspfAC < 6 && $cspfAC > (float) substr($cspf['nol'],1)){ // >3.25
            $result['risk_rating'] = 0;
            $result['eer'] = '';
            $result['cspf'] = $cspfAC;
            $result['risk_rating'] += 0;
        }
        
        if($cspfAC > (float) substr($cspf['satu'],1,6) && $cspfAC < (float) substr($cspf['satu'],8,11)){
            $result['risk_rating'] = 0;
            $result['eer'] = '';
            $result['cspf'] = $cspfAC;
            $result['risk_rating'] += 1;
        }

        if($cspfAC > (float) substr($cspf['dua'],1,6) && $cspfAC < (float) substr($cspf['dua'],8,11)){
            $result['risk_rating'] = 0;
            $result['eer'] = '';
            $result['cspf'] = $cspfAC;
            $result['risk_rating'] += 2;
        }

        if($cspfAC < (float) substr($cspf['tiga'],1)){
            $result['risk_rating'] = 0;
            $result['eer'] = '';
            $result['cspf'] = $cspfAC;
            $result['risk_rating'] += 3;
        }
        
        return $result;
    }

    public function bobotIncrease($tahun1,$tahun2,$result){
        
        if($tahun1 == 0){
            $tahun1 = 1;
        }
        if($tahun2 == 0){
            $tahun2 = 1;
        }

        $pecentage = (($tahun2/$tahun1)*100);

        if($pecentage > 300){
            $result['risk_rating'] += 3;
        }

        if($pecentage > 100 && $pecentage < 300){
            $result['risk_rating'] += 2;
        }

        if($pecentage > 50 && $pecentage < 100){
            $result['risk_rating'] += 1;
        }

        if($pecentage < 50){
            $result['risk_rating'] += 0;
        }

        return $result;

    }
}