<?php

namespace App\Http\Controllers\MasterData;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use Illuminate\Http\Request;

class PengujianUlangController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 4)->orderBy('updated_at', 'desc')->get();
        $status = config('global.status');
        return view('pages.masterdata.pengujian_ulang.index', compact('compliences','status'));
    }
    public function detail($record_id){
        $pengujianForm = array(
            'Time (min)',
            'Voltage (V)',
            'Frequency (Hz)',
            'Current (A)',
            'Dry-bulb temperature, air entering, indoor side  (oC)',
            'Wet-bulb temperature, air entering, indoor side (oC)',
            'Dry-bulb & Wet-bulb temperature outdoor side (oC)',
            'Standard airflow rate (m3/s)',
            'Dry bulb temperature, air leaving, indoor side (oC)',
            'Wet bulb temperature, air leaving, indoor side (oC)',
            'Test Unit Static Pressure (Pa)',
            'Atmospheric pressure (kPa)',
            'Indoor unit fan speed (RPM)',
            'Inverter compressor set* (Hz)',
            'Total cooling capacity (Btu/h),[W]',
            'Latent cooling capacity (Btu/h)',
            'Sensible cooling capacity (Btu/h)',
            'Sensible heat ratio (%)',
            'Effective Power input (W)',
            'EER (Btu/h/W)',
        );
        $complience = Complience::where('record_id', $record_id)->first();
        if (!empty($complience)) {
            $valueForm4 = json_decode($complience->formulir4->form_data, true);
            $dataForm4 = FormCategory::whereHas('childForm', function($q) use($valueForm4){
                $q->whereIn('id', array_keys($valueForm4));
            })->get();
            
            $helpers = new GeneralHelper();
        } else {
            abort(404);
        }
        return view('pages.masterdata.pengujian_ulang.detail', compact(
            'helpers', 
            'complience', 
            'pengujianForm',
            'valueForm4',
            'dataForm4',
        ));
    }
}
