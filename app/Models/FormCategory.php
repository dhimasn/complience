<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormCategory extends Model
{
    public function childForm(){
        return $this->hasMany(FormData::class, 'category_form_id');
    }
}
