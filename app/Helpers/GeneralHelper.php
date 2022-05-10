<?php

namespace App\Helpers;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class GeneralHelper
{
  public static function generateRecordId($length = 12)
  {
    $randomString = Str::random($length);
    return strtoupper($randomString);
  }
  public static function csvToArray($filename = '', $delimiter = ';')
  {
    if (!file_exists($filename) || !is_readable($filename))
      return false;

    $header = null;
    $data = array();
    if (($handle = fopen($filename, 'r')) !== false) {
      while (($row = fgetcsv($handle, 1000, $delimiter)) !== false) {
        if (!$header)
          $header = $row;
        else
          $data[] = array_combine($header, $row);
      }
      fclose($handle);
    }

    return $data;
  }
  public static function uploadImageBase64($base64, $fileName, $dirLocation)
  {
    if (!empty($base64)) {
      $base64 = "data:image/jpeg;base64," . $base64;
      // $extension = explode('/', mime_content_type($base64))[1];
      $extension = 'jpeg';
      $image = str_replace('data:image/' . $extension . ';base64,', '', $base64);
      $image = str_replace(' ', '+', $image);
      $dirDate = date("Y") . '/' . date("m") . '/' . date("d");
      $dirLocation = $dirLocation . '/' . $dirDate . '/';
      $filePath = $dirLocation . $fileName . '.' . $extension;

      Storage::disk('public')->put($filePath, base64_decode($image), 'public');
      return $filePath;
    } else {
      return null;
    }
  }
  public static function formInput($type, $name, $opsi = null, $keterangan = null)
  {
    $result = "";
    switch ($type) {
      case 'TEXT':
        $result = '<input class="form-control form-complience" name="' . $name . '" type="text">';
        break;

      case 'RADIO':
        $class = strlen($opsi) < 25 ? 'form-check-inline' : '';
        $opsi = explode(";", $opsi);
        foreach ($opsi as $val) {
          $result .= '<div class="form-check ' . $class . '">';
          $result .= '<input class="form-check-input" type="radio" name="' . $name . '" value="' . $val . '">
            <label class="form-check-label">' . $val . '</label>';
          $result .= '</div>';
        }
        break;

      case 'FILE':
        $result = '<input class="form-control" name="' . $name . '" type="file">';
        break;

      default:
        # code...
        break;
    }
    if($keterangan){
      $result .= '<input class="form-control form-complience" placeholder="Keterangan Tambahan" name="' . $name . '_keterangan" type="text">';
    }


    return $result;
  }
  public static function formRead($type, $value, $keterangan)
  {
    $result = "";
    if($keterangan){
      $inputValue = $value[0];
      $keteranganValue = $value[1];
    }else{
      $inputValue = $value;
    }
    switch ($type) {
      case 'FILE':
        if($inputValue == '' || $inputValue == null){
          $result = '<br><a class="btn btn-link">Tidak Ada file</a>';
        }else{
          $inputValue = asset("storage/".$inputValue);
          $result = '<br><a href="'.$inputValue.'" target="_blank" class="btn btn-link">Lihat File</a>';
        }
        break;

      default:
        $result = '<input class="form-control form-complience form-read" readonly value="' . $inputValue . '" type="text">';
        break;
    }
    if($keterangan){
      $result .= '<input class="form-control keterangan_form form-read" readonly value="Keterangan: ' . $keteranganValue . '" type="text">';
    }

    return $result;
  }
  public static function formReadInspeksiVisual($type, $value, $keterangan, $key)
  {
    $arrOption = array(10,11,12,13,14,31,32,33,34,38,39,40,41,36);
    $arrOptionValue = array(
      "10" => array("Ya","Sedikit","Tidak"),
      "11" => array("Tidak pernah","Jarang","Sering","Sangat Sering"),
      "12" => array("Mengembalikan produk pada pemasok untuk mencantumkan label","Menahan produk sampai produk pengganti berlabel diterima dari pemasok","Tidak melakukan apa-apa - menjual produk seadanya"),
      "13" => array("Ya","Sering","Kadang-kadang","Tidak pernah"),
      "14" => array("Ya","Sebagian","Tidak"),
      "31" => array("Ya","Tidak"),
      "32" => array("Ya","Tidak"),
      "33" => array("Label jelas dan mudah terlihat","Label kabur atau rusak karena tindakan produsen atau importir","Label kabur atau rusak karena tindakan pengecer","Label sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran","Tidak berlaku - label tidak dibubuhkan"),
      "34" => array("Label terlihat benar dan sesuai dengan persyaratan","Desain label salah (warna, ukuran, dll)","Label tampaknya palsu","Label tidak sesuai dengan model fisik produk","Tidak berlaku - label tidak dibubuhkan"),
      "38" => array("Ya","Tidak yakin","Tidak"),
      "39" => array("Ya","Tidak yakin","Tidak"),
      "40" => array("Ya","Tidak yakin","Tidak"),
      "41" => array("Ya","Tidak yakin","Tidak"),
      "36" => array("Label dan Produk Tampak Sesuai","Label dan Produk Tampak Mencurigakan dan Memerlukan Penyelidikan Lebih lanjut","Label dan Produk Tampak Mencurigakan dan direkomendasikan untuk pengujian verifikasi")
    );
    $result = "";
    if($keterangan){
      $inputValue = $value[0];
      $keteranganValue = $value[1];
    }else{
      $inputValue = $value;
    }
    switch ($type) {
      case 'FILE':
        if($inputValue == '' || $inputValue == null){
          $result = '<br><a class="btn btn-link">Tidak Ada file</a>';
        }else{
          $inputValue = asset("storage/".$inputValue);
          $result = '<br><a href="'.$inputValue.'" target="_blank" class="btn btn-link">Lihat File</a>';
        }
        break;

      default:
        if(in_array($key, $arrOption)){
          $opt = '<select class="form-control form-complience form-read" name="'.$key.'" readonly>';
          foreach ($arrOptionValue[$key] as $option => $value) {
            $selected = $value == $inputValue ? 'selected' : '';
            $opt .= '<option '.$selected.' value="'.$value.'">'.$value.'</option>';
          }
          $opt .= '</select>';
          $result = $opt;
        }else{
          $result = '<input class="form-control form-complience form-read" name="'.$key.'" readonly value="' . $inputValue . '" type="text">';
        }

        break;
    }
    if($keterangan){
      $result .= '<input class="form-control keterangan_form form-read" readonly value="Keterangan: ' . $keteranganValue . '" type="text">';
    }

    return $result;
  }
}
