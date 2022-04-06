<?php

namespace App\Helpers;

use App\Models\FieldMobile;
use App\Models\MasterColumn;
use App\Models\Product;
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
  public function getProductFromDB()
  {
    $products = Cache::rememberForever('product_microsite_' . $this->_idCategory, function () {
      return json_encode(Product::where('category_id', $this->_idCategory)->get()->toArray());
    });
    return $products;
  }
  public function getAllProducts($id_category)
  {
    $this->_idCategory = $id_category;
    $products = $this->getProductFromDB();
    $field_product = MasterColumn::where('category_id', $id_category)->get();
    $result = array();
    foreach ($field_product as $master) {
      foreach (json_decode($products) as $product) {
        if ($master->column_name == $product->field) {
          $result[$product->product_id][$master->column_label] = $product->field_value;
        }
      }
    }
    return $result;
  }
  public function getAllProductsMobile($id_category)
  {
    $this->_idCategory = $id_category;
    $products = $this->getProductFromDB();
    $field_product = FieldMobile::where('category_id', $id_category)->get();
    $result = array();
    $tempResult = array();
    foreach ($field_product as $master) {
      foreach (json_decode($products) as $product) {
        if ($master->field == $product->field) {
          $tempResult[$product->product_id][$master->key] = $product->field_value;
        }
      }
    }
    foreach ($tempResult as $key => $value) {
      $result[] = $value;
    }
    return $result;
  }
}
