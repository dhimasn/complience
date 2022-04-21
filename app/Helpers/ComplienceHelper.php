<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class ComplienceHelper
{
  public static function convertJsonForm($formData, $request, $folderName)
  {
    $arr_form_data = array();
    foreach ($formData as $form) {
      if ($form->data_entry_type == 'FILE') {
        $id_form = $form->id;
        if ($request->hasFile($id_form)) {
          $dirDate = date("Y") . '/' . date("m") . '/' . date("d");
          $dirPath = 'images/' . $folderName.'/'.$dirDate;
          $imageName = time() . '.' . $request->file($id_form)->extension();
          Storage::disk('public')->put($dirPath.'/'.$imageName, File::get($request->file($id_form)));
          // $request->$id_form->move($dirPath, $imageName);
          $arr_form_data[$id_form] = $dirPath.'/'.$imageName;
        }else{
          $arr_form_data[$id_form] = '';
        }
      } else {
        if($form->input_keterangan==1){
          $arr_form_data[$form->id] = array(
            $request->input($form->id),
            $request->input($form->id.'_keterangan'),
          );
        }else{
          $arr_form_data[$form->id] = $request->input($form->id);
        }
      }
    }
    return json_encode($arr_form_data);
  }
}
