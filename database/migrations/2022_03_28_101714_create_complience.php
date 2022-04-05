<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComplience extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('complience', function (Blueprint $table) {
            $table->string('record_id', 20);
            $table->integer('product_id')->nullable();
            $table->integer('pengawas_id');
            $table->string('no_she');
            $table->string('merek')->nullable();
            $table->string('teknologi')->nullable();
            $table->string('model')->nullable();
            $table->string('manufaktur')->nullable();
            $table->string('kode_produk')->nullable();
            $table->string('kapasitas')->nullable();
            $table->string('kode')->nullable();
            $table->string('negara')->nullable();
            $table->string('harga')->nullable();
            $table->integer('lab_uji')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->tinyInteger('kegiatan')->nullable()->comment("1: RRT 2:Pengujian Ulang 3:Lainnya");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('complience');
    }
}
