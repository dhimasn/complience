<?php

namespace App\Http\Controllers\MasterData;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\FormData;
use Illuminate\Http\Request;

class InspeksiVisualController extends Controller
{
    public function index(){
        $compliences = Complience::where('status', 1)->where('kegiatan', 1)->orderBy('updated_at', 'desc')->get();
        return view('pages.masterdata.inspeksi_visual.index', compact('compliences'));
    }
    public function detail($record_id){
        $complience = Complience::where('record_id', $record_id)->first();
        if(!empty($complience)){
            $formData = json_decode($complience->formulir1->form_data,true);
            $keyForm = array();
            foreach ($formData as $key => $value) {
                $keyForm[] = $key;
            }
            $formsInspeksi = FormCategory::whereHas('childForm', function($q) use($keyForm){
                $q->whereIn('id', $keyForm);
            })->get();
            $helper = new GeneralHelper();
            return view('pages.masterdata.inspeksi_visual.detail', compact('complience','formsInspeksi','helper','formData'));
        }else{
            abort(404);
        }
    }
}
