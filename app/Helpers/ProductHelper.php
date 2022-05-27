<?php

namespace App\Helpers;

use App\Models\FieldMobile;
use App\Models\MasterColumn;
use App\Models\Product;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;
use PhpParser\Builder\Function_;

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
    $field_product = MasterColumn::where('category_id', $id_category)->get()->toArray();
    $arrTotal[] = array(
      'category_id' => $id_category,
      'column_name' => 'field-perusahaan',
      'column_label' => 'namaPerusahaan',
    );
    $arrTotal[] = array(
      'category_id' => $id_category,
      'column_name' => 'field-total',
      'column_label' => 'totalProduk',
    );
    
    $field_product = array_merge($field_product, $arrTotal);
    $result = array();
    foreach ($field_product as $master) {
      foreach (json_decode($products) as $product) {
        if ($master['column_name'] == $product->field) {
          if($master['column_name'] == 'field-total'){
            $product->field_value = json_decode($product->field_value, true);
          }
          $result[$product->product_id][$master['column_label']] = $product->field_value;
        }
      }
    }
    return $result;
  }
  public function getAllProductsMobile($id_category)
  {
    $this->_idCategory = $id_category;
    $products = $this->getProductFromDB();
    $field_product = FieldMobile::where('category_id', $id_category)->get()->toArray();
    $arrTotal[] = array(
      'category_id' => $id_category,
      'field' => 'field-kategori',
      'key' => 'kategori',
    );
    
    $field_product = array_merge($field_product, $arrTotal);
    $tempResult = array();
    foreach ($field_product as $master) {
      foreach (json_decode($products) as $product) {
        if ($master['field'] == $product->field) {
          $tempResult[$product->product_id][$master['key']] = $product->field_value;
          if($master['key'] == 'noregistrasi'){
            $kategori = 'registrasi';
            if (strpos($product->field_value, '/') !== false) {
              $kategori = 'she';
            }
            $tempResult[$product->product_id]['kategori'] = $kategori;
          }
        }
      }
    }
    return $tempResult;
  }
}
