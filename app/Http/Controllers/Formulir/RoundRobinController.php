<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Models\FormRoundRobin;
use App\Models\RoundRobin;
use Illuminate\Http\Request;

class RoundRobinController extends Controller
{
    public function index(){
        return view('pages.roundrobin.index');
    }
    public function form(){
        return view('pages.roundrobin.form');
    }
}

