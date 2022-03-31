<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormRoundRobin;
use App\Models\RoundRobin;
use Illuminate\Http\Request;

class RoundRobinController extends Controller
{
    public function index(){
        $complience = Complience::where('status', 3)->get();
        
        return view('pages.roundrobin.index', compact('complience'));
    }
    public function form($record_id){
        $forms = array(
            'Berat unit indoor, sebelum',
            'Berat unit indoor, sesudah',
            'Berat unit outdoor, sebelum',
            'Berat unit outdoor, sesudah',
            'Pipa tembaga sepanjang 7,5 m ± 10 cm',
            'Pasang Thermokopel pada unit Indoor dan Outdoor',
            'Instalasi unit (jarak unit indoor ke dinding 300 - 400 mm)',
            'Instalasi unit (jarak unit indoor ke lantai 1400 - 1500 mm)',
            'Instalasi unit (jarak unit outdoor ke dinding 500 mm)',
            'Instalasi unit (jarak unit outdoor ke lantai 750 - 1000 mm)',
            'Instalasi pemasangan air sampler unit Indoor (Metode Air Enthalpy)',
            'Instalasi pemasangan air sampler unit Outdoor (Metode Air Enthalpy)',
            'Proses pemvakuman',
            'Test kebocoran pipa',
            'Kondisi Temperatur Pengujian',
            'Indoor Chamber: TDB (27℃), TWB (19℃) Outdoor Chamber: TDB (35℃), TWB (24℃)',
            'Atur AC pada posisi:
            - Mode : Cool
            - Kecepatan fan : Maksimum
            - Posisi pengarah hembusan udara : Maksimum
            - Temperatur Remote Control : Suhu terendah/minimum',
            'Jaga perbedaan tekanan air discharge AC yang diuji di dalam receiving chamber dan ruang chamber sebesar 0 Pa',
            'Kecepatan aliran udara (air velocity) antara 15m/dt - 35m/dt dengan mengatur nozzle pada receiving chamber',
        );
        return view('pages.roundrobin.form', compact('forms'));
    }
    public function store(){
        return back()->with('success', 'Disimpan Kedalam Database');
    }
}

