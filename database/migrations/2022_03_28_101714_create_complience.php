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
            $table->string('record_id');
            $table->integer('product_id');
            $table->integer('pengawas_id');
            $table->string('no_she');
            $table->string('merek')->nullable();
            $table->string('teknologi');
            $table->string('manufaktur')->nullable();
            $table->string('kode')->nullable();
            $table->string('negara')->nullable();
            $table->string('harga')->nullable();
            $table->integer('lab_uji')->nullable();
            $table->tinyInteger('status')->default(1);
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