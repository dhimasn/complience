<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormCategory;
use App\Models\Formulir2;
use App\Models\Formulir4;
use Illuminate\Http\Request;
use Session;

class RoundRobinController extends Controller
{
    public function index()
    {
        $userRole = \Auth::user()->id_user_role;
        if ($userRole == 3) {
            $complience = Formulir4::where('lab_uji', \Auth::user()->id_lab)->where('status', 1)->orderBy('updated_at', 'desc')->get();
        } elseif ($userRole == 2) {
            $complience = Formulir4::where('status', 1)->orderBy('updated_at', 'desc')->get();
        }
        return view('pages.roundrobin.index', compact('complience'));
    }
    public function form($record_id)
    {
        $complience = Formulir4::findOrFail($record_id);
        $forms = FormCategory::where('jenis_form', 5)->get();
        $helpers = new GeneralHelper();
        return view('pages.roundrobin.form', compact('forms', 'helpers', 'complience'));
    }
    public function store(Request $request)
    {
        $formulir = new Formulir2();
        $status = 5;
        $jenis_form = 5;
        if ($formulir->storeData($request, $status, $jenis_form)) {
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return redirect()->route('roundrobin.index');
    }
}
