<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormulir3 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('formulir_3', function (Blueprint $table) {
            $table->id();
            $table->string('record_id');
            $table->integer('pengawas_id');
            $table->longText('form_data');
            $table->integer('lab_uji')->nullable();
            $table->string('nama_pemeriksan')->nullable();
            $table->string('nama_persetujuan')->nullable();
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
        Schema::dropIfExists('formulir_3');
    }
}