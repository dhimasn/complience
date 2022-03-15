<?php

namespace App\Helpers;
use Illuminate\Support\Facades\Log;

class ApiHelper
{
  public static function respApi($url, $header, $post=false, $json_type=true)
  {
    try{
      $log = "";
      $log .= "Url :".$url;
        if($json_type){
          $header[] = 'Content-Type:application/json';
          if ($post) 
            $post = json_encode($post);

          $log .= ".Header :".json_encode($header);
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36");
    
        if ($post) {
          curl_setopt($ch, CURLOPT_POST, true);
          curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
          $log .= ".Body :".$post;
        }
    
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $responseJson = curl_exec($ch);
        curl_close($ch);
        $log .= ".Resp :".$responseJson;
        Log::channel('api')->info($log);
        return $responseJson;
    }catch (\Throwable $e) {
        report($e);
        return false;
    }
  }
}
