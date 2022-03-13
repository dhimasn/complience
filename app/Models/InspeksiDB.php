<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InspeksiDB extends Model
{

    protected $connection = 'cmp_tools';

    protected $table = 'data_produk_inpeksi';

    protected $primaryKey = 'Id_data_produk_inspeksi';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [];

    public $timestamps = false;

}
