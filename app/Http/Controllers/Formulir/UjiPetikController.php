<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\Formulir2;
use Illuminate\Http\Request;
use Session;

class UjiPetikController extends Controller
{
    public function index(){
        $compliences = Complience::where('status', 4)->where('lab_uji', '!=', '')->orderBy('updated_at')->get();
        return view('pages.ujipetik.index', compact('compliences'));
    }
    public function form($record_id){
        $forms = FormCategory::where('jenis_form', 2)->get();
        $helpers = new GeneralHelper();
        $complience = Complience::where('record_id', $record_id)->first();
        return view('pages.ujipetik.form',compact('forms', 'complience','helpers'));
    }
    public function store(Request $request){
        $formulir = new Formulir2();
        $status = 6;
        $jenis_form = 2;
        if ($formulir->storeData($request, $status, $jenis_form)) {
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return redirect()->route('ujipetik.index');
    }
}
