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
      $extension = explode('/', mime_content_type($base64))[1];
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
}
