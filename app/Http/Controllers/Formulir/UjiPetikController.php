<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\FormData;
use App\Models\FormLabDB;
use Illuminate\Http\Request;

class UjiPetikController extends Controller
{
    public function index(){
        $compliences = Complience::where('status', 2)->where('lab_uji', '!=', '')->get();
        return view('pages.ujipetik.index', compact('compliences'));
    }
    public function form($record_id){
        $forms = FormCategory::where('jenis_form', 2)->get();
        $helpers = new GeneralHelper();
        $complience = Complience::where('record_id', $record_id)->first();
        return view('pages.ujipetik.form',compact('forms', 'complience','helpers'));
    }
    public function store(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        $complience->status = 4;
        $complience->save();
        return back()->with('success', 'Disimpan Kedalam Database');
    }
}
