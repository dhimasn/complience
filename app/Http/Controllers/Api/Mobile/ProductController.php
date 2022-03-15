<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ProductController extends Controller
{
  public function getAllProduct(Request $request)
  {
    if (null == $request->input('category') || empty($request->input('category'))) {
      $response['success'] = true;
      $response['message'] = 401;
      $response['data'] = "Wrong Params";
      return response()->json($response, 200);
    }
    try {
      $category = $request->input('category');
      $result = Cache::rememberForever('sync_product_mobile_' . $category, function () use ($category) {
        $product_helper = new ProductHelper();
        return $product_helper->getAllProductsMobile($category);
      });
      if ($result) {
        $response['success'] = true;
        $response['message'] = "200 Ok";
        $response['data'] = $result;
      } else {
        $response['success'] = true;
        $response['message'] = 404;
        $response['data'] = "Empty Data";
      }
      return response()->json($response, 200);
    } catch (\Exception $e) {
      report($e);
      $response['success'] = true;
      $response['message'] = 500;
      $response['data'] = "Internal Error";
      return response()->json($response, 200);
    }
  }
}
