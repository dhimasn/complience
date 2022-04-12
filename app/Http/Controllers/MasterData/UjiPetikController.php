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
        return view('pages.masterdata.uji_petik.index', compact('compliences'));
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
        if (!empty($complience)) {
            $formData = json_decode($complience->formulir1->form_data, true);
            $keyForm = array();
            foreach ($formData as $key => $value) {
                $keyForm[] = $key;
            }
            $formsInspeksi = FormData::whereIn('id', $keyForm)->get();
            $helper = new GeneralHelper();
            $forms = FormCategory::where('jenis_form', 5)->get();
            $helper = new GeneralHelper();
            return view('pages.masterdata.uji_petik.detail', compact('forms', 'helper', 'complience', 'pengujianForm','formsInspeksi','formData'));
        } else {
            abort(404);
        }
    }
}
