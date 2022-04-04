<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Log;

class ComplienceHelper
{
  public static function convertJsonForm($formData, $request, $folderName)
  {
    $arr_form_data = array();
    foreach ($formData as $form) {
      if ($form->data_entry_type == 'FILE') {
        $id_form = $form->id;
        if ($request->hasFile($id_form)) {
          $dirPath = storage_path('images/' . $folderName);
          $imageName = time() . '.' . $request->file($id_form)->extension();
          $request->$id_form->move($dirPath, $imageName);
          $arr_form_data[$id_form] = $dirPath.'/'.$imageName;
        }
      } else {
        $arr_form_data[$form->id] = $request->input($form->id);
      }
    }
    return json_encode($arr_form_data);
  }
}
