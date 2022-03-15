<?php

namespace App\Helpers;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;

class ProductHelper
{
  private $_idCategory;
  /**
   * params
   * id_category
   * 
   * return array list products
   */
  public function getProductFromDB(){
    $products = Cache::rememberForever('product_microsite_'.$this->_idCategory, function () {
      return json_encode(\DB::table('data_produk_cmp')->where('id_category', $this->_idCategory)->get()->toArray());
    });
    return $products;
  }
  public function getAllProducts($id_category){
    $this->_idCategory = $id_category;
    $products = $this->getProductFromDB();
    $field_product = \DB::table('product_master_column')->where('category_id', $id_category)->get();
    $result = array();
    foreach ($field_product as $master) {
        foreach (json_decode($products) as $product) {
            if($master->column_name == $product->id_field){
                $result[$product->id_data_produk][$master->column_label] = $product->field_value;
            }
        }
    }
    return $result;
  }
  public function getAllProductsMobile($id_category){
    $this->_idCategory = $id_category;
    $products = $this->getProductFromDB();
    $field_product = \DB::table('field_api_mobile')->where('id_category_product', $id_category)->get();
    $result = array();
    foreach ($field_product as $master) {
        foreach (json_decode($products) as $product) {
            if($master->field == $product->id_field){
                $result[$product->id_data_produk][$master->key] = $product->field_value;
            }
        }
    }
    return $result;
  }
}
