<?php

namespace App\Http\Controllers\MasterData;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\FormData;
use Illuminate\Http\Request;
use Session;

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
    public function simpan(Request $request, $record_id){
        try{
            $complience = Complience::where('record_id', $record_id)->first();
            $formData = json_decode($complience->formulir1->form_data,true);
            $updateForm = array();
            foreach ($formData as $key => $value) {
                $updateForm[$key] = $request->input($key);
            }
            $complience->formulir1->form_data = json_encode($updateForm);
            $complience->formulir1->save();
            Session::flash('success', 'Disimpan Kedalam Database');
        }catch(\Exception $e){
            report($e);
        }
        return redirect()->route('masterdata.inspeksi_visual.detail', $record_id);
    }
}
