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
    
    public function index(Request $request){
        //filter
        $periode = $request->input('periode') == '' ? 'tahun' : $request->input('periode');
        $tahun = $request->input('tahun') == '' ? date('Y') : $request->input('tahun');
        $dariDate = date("Y-m-d", strtotime($request->input('dari')));
        $hinggaDate = date("Y-m-d", strtotime($request->input('hingga')));
        $tahunDate = date("Y", strtotime($dariDate));
        $dataList = array($tahun);
        $months = array(
            "01" => "Jan",
            "02" => "Feb",
            "03" => "Mar",
            "04" => "Apr",
            "05" => "Mei",
            "06" => "Jun",
            "07" => "Jul",
            "08" => "Agu",
            "09" => "Sep",
            "10" => "Okt",
            "11" => "Nov",
            "12" => "Des"
        );
        $dariSelected = $request->input('dari');
        $hinggaSelected = $request->input('hingga');
        $kapasitas = $request->input('kapasitas'); 
        
        //filter terpakai
        $kompressor = $request->input('kompressor');
        $bintang = $request->input('bintang');
        $kapasitas = $request->input('kapasitas');
        $kp = null;
        if(!empty($kapasitas)){
            if($kapasitas == 0.5){
                $kpA = 0;
                $kpB = 4500.00;
            }
            if($kapasitas == 0.75){
                $kpA = 4500.00;
                $kpB = 6750.00;
            }
            if($kapasitas == 1){
                $kpA = 6750.00;
                $kpB = 9000.00;
            }
            if($kapasitas == 1.5){
                $kpA = 9000.00;
                $kpB = 13500.00;
            }
            if($kapasitas == 2){
                $kpA = 13500.00;
                $kpB = 18000.00;
            }
            if($kapasitas == 2.5){
                $kpA = 18000.00;
                $kpB = 26999.00;
            }
            if($kapasitas == 3){
                $kpA = 27000.00;
                $kpB = 30000.00;
            }
            $kp['a'] = $kpA;
            $kp['b'] = $kpB;
        }
        $highrisk = [];
        $result = $this->highrisk->getListDataHighRiskCustom($kompressor, $bintang, $kp);
        foreach($result as $rs){  
            $hks = json_decode($rs['form_data']);
            $hk['nomor_she'] = $rs['no_she'];
            $hk['model'] =  $rs['model'];
            $hk['merek'] =  $rs['merek'];
            $hk['stars_rating'] =  $rs['bintang'];
            $hk['eer'] =  $hks->{1};
            $hk['cspf'] =  $hks->{2};
            $hk['kapasitas'] = $rs['kapasitas'];
            $hk['compressor_type'] =$rs['compressor_type'];
            $hk['risk_rating'] =  $hks->risk_rating;
            $hk['verification_result'] =  $rs['verification_result'];
            $hk['volume_produk'] =  $rs['volume'];
            array_push($highrisk,$hk); 
        }
        
        return view('pages.highrisk.index', compact(
            'highrisk',
            'periode',
            'tahun',
            'dariSelected',
            'hinggaSelected',
            'kapasitas',
            'kompressor',
            'bintang',
        ));
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

        $highrisk = [];

        $th1 = date('Y')-2;
        $th2 = date('Y')-1;

        foreach($products as $pdt){

            $result = array(
                'nomor_she' => '',
                'model' =>'',
                'merek' => '',
                 $th1 => '',
                 $th2 => '',
                'percentage' => '',
                'risk_rating' => 0
            );
            
            if(array_key_exists('No. Registrasi/No. SHE', $pdt)){

                $result['nomor_she'] = $pdt['No. Registrasi/No. SHE'];
                $result['model'] = $pdt['Model'];
                $result['merek'] = $pdt['Merek'];
                
                if(!empty($pdt['totalProduk'])){

                    $tahun1 = 0;
                    $tahun2 = 0;

                    if(array_key_exists($th1, $pdt['totalProduk'])){
                        $tahun1 = $pdt['totalProduk'][$th1];
                    }

                    if(array_key_exists($th2, $pdt['totalProduk'])){
                        $tahun2 = $pdt['totalProduk'][$th2];
                    }

                    $result[$th1] = $tahun1;

                    $result[$th2] = $tahun2;

                    //bobot incrrease
                    $result = $this->bobotIncrease($tahun1,$tahun2,$result);

                }

            }    
            array_push($highrisk, $result);            
        }

        return view('pages.highrisk.volume', compact('highrisk','th1','th2'));
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
            $result['bobot1'] = 0;
        }

        if($eerAC > (float) substr($eer['satu'],1,6) && $eerAC < (float) substr($eer['satu'],8,11)){ //
            $result['eer'] = $eerAC;
            $result['bobot1'] = 1;
        }

        if($eerAC > (float) substr($eer['dua'],1,6) && $eerAC <  (float) substr($eer['dua'],8,11)){
            $result['eer'] = $eerAC;
            $result['bobot1'] = 2;
        }

        if($eerAC > 6 && $eerAC <  (float) substr($eer['tiga'],1)){
            $result['eer'] = $eerAC;
            $result['bobot1'] = 3;
        }

        $cspfAC = (float) $pdt['Nilai Efisiensi (EER/CSPF)'];
      
        if($cspfAC < 6 && $cspfAC > (float) substr($cspf['nol'],1)){ // >3.25
            $result['cspf'] = $cspfAC;
            $result['bobot2'] = 0;
        }
        
        if($cspfAC > (float) substr($cspf['satu'],1,6) && $cspfAC < (float) substr($cspf['satu'],8,11)){
            $result['cspf'] = $cspfAC;
            $result['bobot2'] = 1;
        }

        if($cspfAC > (float) substr($cspf['dua'],1,6) && $cspfAC < (float) substr($cspf['dua'],8,11)){
            $result['cspf'] = $cspfAC;
            $result['bobot2'] = 2;
        }

        if($cspfAC < (float) substr($cspf['tiga'],1)){
            $result['cspf'] = $cspfAC;
            $result['bobot2'] = 3;
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

        $result['percentage'] = (($tahun2/$tahun1)*100/100);
    

        if($result['percentage'] > 300){
            $result['bobot4'] = 3;
        }

        if($result['percentage'] > 100 && $result['percentage'] < 300){
            $result['bobot4'] = 2;
        }

        if($result['percentage'] > 50 && $result['percentage'] < 100){
            $result['bobot4'] = 1;
        }

        if($result['percentage'] < 50){
            $result['bobot4'] = 0;
        }

        return $result;

    }

    public function pangsaPasar($pdt, $ttlProduk, $result, $varProduksi, $varProduksi1){

        if((float) $pdt['Daya (watt)'] > 1103.25){
            if($ttlProduk < (float)(substr($varProduksi1->nol,1))){
                $result['bobot6'] = 0;
            }

            if($ttlProduk > (float)(substr($varProduksi1->satu,1)) && $ttlProduk < (float)(substr($varProduksi1->satu,6))){ //5,000-10,000
                $result['bobot6'] = 1;
            }

            if($ttlProduk < (float)(substr($varProduksi1->dua,1)) && $ttlProduk < (float)(substr($varProduksi1->dua,7))){ //10,000-15,000
                $result['bobot6'] = 2;
            }

            if($ttlProduk > (float)(substr($varProduksi1->tiga,1))){
                $result['bobot6'] = 3;
            }
        }

        if((float) $pdt['Daya (watt)'] <= 1103.25){

            if($ttlProduk < (float)(substr($varProduksi->nol,1))){
                $result['bobot5'] = 0;
            }

            if($ttlProduk < (float)(substr($varProduksi->satu,1)) && $ttlProduk < (float)(substr($varProduksi->satu,7))){
                $result['bobot5'] = 1;
            }

            if($ttlProduk < (float)(substr($varProduksi->dua,1)) && $ttlProduk < (float)(substr($varProduksi->dua,7))){
                $result['bobot5'] = 2;
            }

            if($ttlProduk > (float)(substr($varProduksi->tiga,1))){
                $result['bobot5'] = 3;
            }
        }
        return $result;
    }

    public function sync(){

        $productHelper = new ProductHelper();

        $products = $productHelper->getAllProducts(2);
        
        $eer  = $this->highrisk->refrenceByidKriteria(1);
        
        $cspf = $this->highrisk->refrenceByidKriteria(2);

        $varProduksi = $this->highrisk->refrenceByidKriteria(5);

        $varProduksi1 = $this->highrisk->refrenceByidKriteria(6);

        if(!empty($products)){
            
            foreach($products as $pdt){

                $result = array(
                    'nomor_she' => '',
                    'model' =>'',
                    'merek' => '',
                    'stars_rating' => '',
                    'kapasitas'=>'',
                    'compressor_type' => '-',
                    'eer' => '-',
                    'cspf' => '-',
                    'ketidaksesuaian' => '-',
                    'volume_produk' => '-',
                    'percentage' => '-',
                    'verification_result' => '-',
                    'bobot1' => 0,
                    'bobot2' => 0,
                    'bobot3' => 0,
                    'bobot4' => 0,
                    'bobot5' => 0,
                    'bobot6' => 0,
                    'risk_rating' => 0,
                );
                        
                if(array_key_exists('No. Registrasi/No. SHE', $pdt)){
                    $result['nomor_she'] = $pdt['No. Registrasi/No. SHE'];
                    $result['model'] = $pdt['Model'];
                    $result['merek'] = $pdt['Merek'];
                    $result['stars_rating'] = $pdt['Rating Bintang (1-5)'];
                    $result['compressor_type'] = $pdt['Tipe'];
                    $result['kapasitas'] = $pdt['Kapasitas Pendinginan (BTU/h)'];
                    
                    if(!empty($pdt['Nilai Efisiensi (EER/CSPF)'])){
                        //find nilai eer & cspf
                        $result = $this->eeRcspF($eer, $cspf, $pdt, $result);
                    }
                    
                    //find history complience high risk
                    $she = $this->highrisk->getReportByShe($pdt);
                    if(!empty($she)){
                        $result['bobot3'] = $she->bobot;
                        $result['ketidaksesuaian'] = $she->ketidaksesuaian;
                    }

                    //find get bobot volume produksi
                    if(!empty($pdt['totalProduk'])){

                        $th1 = date('Y')-2;
                        $th2 = date('Y')-1;
                
                        $tahun1 = 0;
                        $tahun2 = 0;

                        if(array_key_exists($th1, $pdt['totalProduk'])){
                            $tahun1 = $pdt['totalProduk'][$th1];
                        }

                        if(array_key_exists($th2, $pdt['totalProduk'])){
                            $tahun2 = $pdt['totalProduk'][$th2];
                        }

                        $ttlProduk = $tahun1+$tahun2;

                        $result['volume_produk'] = $ttlProduk;

                        if(!empty($pdt['Daya (watt)'])){
                            $result = $this->pangsaPasar($pdt, $ttlProduk, $result, $varProduksi, $varProduksi1);
                        }

                        //bobot incrrease
                        $result = $this->bobotIncrease($tahun1,$tahun2,$result);
                    }
                    $volume1 = 0;
                    $volume2 = 0;
                    if($result['bobot5'] != 0){
                        $volume1 = $result['volume_produk'];
                    }else if ($result['bobot6'] != 0){
                        $volume2 = $result['volume_produk'];
                    }
  
                    $highrisk = array(
                        '1' => $result['eer'],
                        '2' => $result['cspf'],
                        '3' => $result['ketidaksesuaian'],
                        '4' => $result['percentage'].'%',
                        '5' => $volume1,
                        '6' => $volume2,
                        'bobot1' => $result['bobot1'],
                        'bobot2' => $result['bobot2'],
                        'bobot3' => $result['bobot3'],
                        'bobot4' => $result['bobot4'],
                        'bobot5' => $result['bobot5'],
                        'bobot6' => $result['bobot6'],
                        'risk_rating' => $result['bobot1']+$result['bobot2']+$result['bobot3']+$result['bobot4']+$result['bobot5']+$result['bobot6'],
                    );
                    
                    $this->highrisk->addHighrisk($result, $highrisk);
                }                
            }
        }
    }

    public function detail($no_she){
        $highrisk = $this->highrisk->getHighRisk($no_she);
        $hks = json_decode($highrisk->form_data);
        $kriteria = $this->highrisk->refrence();
        foreach($kriteria as $hkriteria){
            if($hkriteria->id_kriteria == 1){
                $result['kriteria1'] = $hkriteria->kriteria;
                $result['nilai1'] = $hks->{1};
                $result['bobot1'] = $hks->bobot1;
            }
            if($hkriteria->id_kriteria == 2){
                $result['kriteria2'] = $hkriteria->kriteria;
                $result['nilai2'] = $hks->{2};
                $result['bobot2'] = $hks->bobot2;
            }
            if($hkriteria->id_kriteria == 3){
                $result['kriteria3'] = $hkriteria->kriteria;
                $result['nilai3'] = $hks->{3};
                $result['bobot3'] = $hks->bobot3;
            }
            if($hkriteria->id_kriteria == 4){
                $result['kriteria4'] = $hkriteria->kriteria;
                $result['nilai4'] = $hks->{4};
                $result['bobot4'] = $hks->bobot4;
            }
            if($hkriteria->id_kriteria == 5){
                $result['kriteria5'] = $hkriteria->kriteria;
                $result['nilai5'] = $hks->{5};
                $result['bobot5'] = $hks->bobot5;
            }
            if($hkriteria->id_kriteria == 6){
                $result['kriteria6'] = $hkriteria->kriteria;
                $result['nilai6'] = $hks->{6};
                $result['bobot6'] = $hks->bobot6;
            }
            $result['risk_rating'] = $hks->risk_rating;
        }
        return view('pages.highrisk.detail', compact('result'));
    }

    public function export(){
        $headers = [
            "Content-type"        => "text/csv",
            "Content-Disposition" => "attachment; filename=high_risk.csv", // <- name of file
            "Pragma"              => "no-cache",
            "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
            "Expires"             => "0",
        ];
        $columns  = ['nomor_she','model_produk','merek','stars_rating','eer (Btu/h/w)','cspf (wh/wh)','compressor_type','risk_rating','verification_result','volume'];
        $result = $this->highrisk->getListDataHighRisk();
        $callback = function () use ($result, $columns) {
            $file = fopen('php://output', 'w'); //<-here. name of file is written in headers
            fputcsv($file, $columns);
            foreach ($result as $rs) {
                $hks = json_decode($rs['form_data']);
                fputcsv($file, [$rs['no_she'], 
                                $rs['model'], 
                                $rs['merek'], 
                                $rs['bintang'],
                                $hks->{1},
                                $hks->{2},
                                $rs['compressor_type'],
                                $hks->risk_rating,
                                $rs['verification_result'],
                                $rs['volume']
                            ]);
            }
            fclose($file);
        };
        return response()->stream($callback, 200, $headers);
    }
    
}