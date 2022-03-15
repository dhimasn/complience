<?php

namespace App\Helpers;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;

class ProductHelper
{
  /**
   * params
   * id_category
   * 
   * return array list products
   */
  public static function getAllProducts($id_category){
    $products = Cache::get('product_microsite', function () use($id_category) {
      return json_encode(\DB::table('data_produk_cmp')->where('id_category', $id_category)->get()->toArray());
    });
    $product_master = \DB::table('product_master_column')->where('category_id', $id_category)->get();
    $result = array();
    foreach ($product_master as $master) {
        foreach (json_decode($products) as $product) {
            if($master->column_name == $product->id_field){
                $result[$product->id_data_produk][$master->column_label] = $product->field_value;
            }
        }
    }
    return $result;
  }
}
