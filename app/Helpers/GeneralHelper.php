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
  public static function formInput($type, $name, $opsi = null, $placeHolder = null)
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


    return $result;
  }
  public static function formRead($type, $value)
  {
    $result = "";
    switch ($type) {
      case 'FILE':
        $value = asset("storage/".$value);
        $result = '<br><a href="'.$value.'" target="_blank" class="btn btn-link">Lihat File</a>';
        break;

      default:
        $result = '<input class="form-control form-complience" readonly value="' . $value . '" type="text">';
        break;
    }

    return $result;
  }
}
