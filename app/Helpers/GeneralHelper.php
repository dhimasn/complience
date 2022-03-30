<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Log;

class GeneralHelper
{
  public static function generateRecordId($length = 8)
  {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $string = '';
    for ($i = 0; $i < $length; $i++) {
      $string .= $characters[rand(0, $charactersLength - 1)];
    }
    return $string;
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
}
