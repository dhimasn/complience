<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
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
        $complience = Complience::where('record_id', $record_id)->first();
        $forms = FormCategory::where('jenis_form', 5)->get();
        $helpers = new GeneralHelper();
        return view('pages.roundrobin.form', compact('forms','helpers','complience'));
    }
    public function store(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        $complience->status = 5;
        $complience->save();
        return back()->with('success', 'Disimpan Kedalam Database');
    }
}

