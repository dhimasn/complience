<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUjiPetikTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uji_petik', function (Blueprint $table) {
            $table->id();
            $table->string('record_id');
            $table->string('id_inspeksi_visual');
            $table->string('lokasi_pengawasan');
            $table->string('lat_long');
            $table->integer('pengawas_id');
            $table->longText('form_data');
            $table->dateTime('datetime_offline');
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
        Schema::dropIfExists('uji_petik');
    }
}
