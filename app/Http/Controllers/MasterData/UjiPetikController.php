<?php

namespace App\Http\Controllers\MasterData;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\FormData;
use Illuminate\Http\Request;

class UjiPetikController extends Controller
{
    public function index()
    {
        $compliences = Complience::where('kegiatan', 2)->orderBy('updated_at', 'desc')->get();
        $status = config('global.status');
        return view('pages.masterdata.uji_petik.index', compact('compliences','status'));
    }
    public function detail($record_id)
    {
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
        $formsSampeUji = false;
        if (!empty($complience)) {
            // dd($complience->ujipetiks->form_data);
            $inspeksi = json_decode($complience->formulir1->form_data, true);
            $ujipetik = json_decode($complience->ujipetik->form_data, true);
            $sampeUji = isset($complience->formulir2->form_data) ? json_decode($complience->formulir2->form_data, true) : false;
            $valueForm3 = isset($complience->formulir3->form_data) ? json_decode($complience->formulir3->form_data, true) : false;
            $inspeksi = $ujipetik+$inspeksi;
            $formsInspeksi = FormCategory::whereHas('childForm', function($q) use($inspeksi){
                $q->whereIn('id', array_keys($inspeksi));
            })->get();
            if($sampeUji){
                $formsSampeUji = FormCategory::whereHas('childForm', function($q) use($sampeUji){
                    $q->whereIn('id', array_keys($sampeUji));
                })->get();
            }
            $helper = new GeneralHelper();
            return view('pages.masterdata.uji_petik.detail', compact(
                'helper', 
                'complience', 
                'inspeksi',
                'sampeUji',
                'valueForm3',
                'formsInspeksi',
                'formsSampeUji',
                'pengujianForm'));
        } else {
            abort(404);
        }
    }
}
