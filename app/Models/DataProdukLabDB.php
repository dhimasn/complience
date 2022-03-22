<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataProdukLabDB extends Model
{
    
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'data_produk_lab';

    protected $primaryKey = 'id_data_produk_lab';

    public $timestamps = false;

}
