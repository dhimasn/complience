<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDataHighRiskTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_high_risk', function (Blueprint $table) {
            $table->id();
            $table->string('no_she');
            $table->string('model');
            $table->string('merek');
            $table->string('bintang');
            $table->string('compressor_type');
            $table->string('volume');
            $table->string('verification_result');
            $table->string('risk_rating');
            $table->string('form_data');
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
        Schema::dropIfExists('data_high_risk');
    }
}
