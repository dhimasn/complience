<?php

namespace App\Helpers;
use Illuminate\Support\Facades\Log;

class ApiHelper
{
  /**
   * params
   * id_category
   * 
   * return array list products
   */
  public function getAllProducts($id_category){
    $products = \DB::table('data_produk_cmp')->where('id_category', $id_category)->get();
    $product_master = \DB::table('product_master_column')->where('category_id', $id_category)->get();
    $result = array();
    foreach ($product_master as $master) {
        foreach ($products as $product) {
            if($master->column_name == $product->id_field){
                $result[$product->id_data_produk][$master->column_label] = $product->field_value;
            }
        }
    }
    return $result;
  }
}
