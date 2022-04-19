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
            $inspeksi = json_decode($complience->ujipetiks->form_data, true);
            $sampeUji = json_decode($complience->formulir2->form_data, true);
            $hasilPengujian = json_decode($complience->formulir3->form_data, true);
            
            $formsInspeksi = FormCategory::whereHas('childForm', function($q) use($inspeksi){
                $q->whereIn('id', array_keys($inspeksi));
            })->get();
            $formsSampeUji = FormCategory::whereHas('childForm', function($q) use($sampeUji){
                $q->whereIn('id', array_keys($sampeUji));
            })->get();
            $helper = new GeneralHelper();
            return view('pages.masterdata.uji_petik.detail', compact(
                'helper', 
                'complience', 
                'inspeksi',
                'sampeUji',
                'hasilPengujian',
                'formsInspeksi',
                'formsSampeUji',
                'pengujianForm'));
        } else {
            abort(404);
        }
    }
}
