<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataProdukLabFileDB extends Model
{
     /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'data_produk_lab_file';

    protected $primaryKey = 'id_data_produk_lab';

    public $timestamps = false;

}
