<?php

namespace App\Http\Controllers\MasterData;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function index($cat){

        switch ($cat) {
            case 'ac':
                $products = $this->ac();
                break;
            
            default:
                abort(404);
                break;
        }
        return $products;
    }

    public function ac(){
        $productHelper = new ProductHelper();
        $products = $productHelper->getAllProducts(2);
        return view('pages.masterdata.produk_microsite.ac', compact('products'));
    }
}
