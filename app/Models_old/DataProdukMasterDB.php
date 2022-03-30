<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataProdukMasterDB extends Model
{
    #protected $connection = 'cmp_tools';
    
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'data_produk_master';

    protected $primaryKey = 'id';
    
    protected $fillable = ['id_data_produk','date_added','date_updated'];

    public $timestamps = false;

    public function produk_inspeksi() {
        return $this->hasMany('App\Models\InspeksiDB', 'id_data_produk', 'id_data_produk');
    }

}
