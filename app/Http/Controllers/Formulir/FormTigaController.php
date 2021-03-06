<?php

namespace App\Http\Controllers\Formulir;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormLabDB;
use App\Models\Formulir2;
use App\Models\Formulir3;
use App\Repo\InpeksiDb;
use Exception;
use Illuminate\Support\Facades\Auth;
use Session;

class FormTigaController extends Controller
{
    public function index(){
        $userRole = \Auth::user()->id_user_role;
        // if($userRole == 3){
        //     $compliences = Complience::whereIn('status', [5,6])->whereHas('formulir2s', function ($q) {
        //         $q->where('lab_uji', \Auth::user()->id_lab)->where('status', 1);
        //      })->orderBy('updated_at', 'desc')->get();
        // }elseif($userRole == 2){
        //     $compliences = Complience::whereIn('status', [5,6])->whereHas('formulir2s', function ($q) {
        //         $q->where('status', 1);
        //      })->orderBy('updated_at', 'desc')->get();
        // }
        // $userRole = \Auth::user()->id_user_role;
        if ($userRole == 3) {
            $compliences = Formulir2::where('lab_uji', \Auth::user()->id_lab)->where('status', 1)->orderBy('updated_at', 'desc')->get();
        } elseif ($userRole == 2) {
            $compliences = Formulir2::where('status', 1)->orderBy('updated_at', 'desc')->get();
        }
        $kegiatan = config('global.kegiatan');
        return view('pages.formulir3.index', compact('compliences','kegiatan'));
    }
    public function ujiPetik(){
        return view('pages.formulir3.ujipetik');
    }
    public function roundRobin(){
        return view('pages.formulir3.roundrobin');
    }
    public function form($record_id){
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
        $complience = Formulir2::findOrFail($record_id);
        return view('pages.formulir3.form', compact('pengujianForm', 'complience'));
    }
    public function store(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        if(!empty($complience)){
            $formulir = new Formulir3();
            $status = 8;
            if($complience->status == '6'){
                $status = 7;
            }
            $jenis_form = 3;
            if ($formulir->storeData($request, $status, $jenis_form)) {
                Session::flash('success', 'Disimpan Kedalam Database');
            } else {
                Session::flash('error');
            }
        }else{
            Session::flash('error');
        }
        return redirect()->route('form3.index');
    }
}
