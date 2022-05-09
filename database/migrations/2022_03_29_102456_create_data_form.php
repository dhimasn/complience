<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDataForm extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('form_data', function (Blueprint $table) {
            $table->id();
            $table->integer('category_form_id')->nullable();
            $table->integer('category_product_id');
            $table->text('data_point');
            $table->string('data_entry_type');
            $table->text('data_input')->nullable();
            $table->tinyInteger('mandatory');
            $table->text('notes');
            $table->tinyInteger('jenis_form')->comment("1: Formulir_1 2:Formulir_2(Uji Petik) 3:Formulir_3 4:Formulir_4 5:Formulir_2(RRT)");
            $table->tinyInteger('input_keterangan')->comment("0: Tidak aktif 1: Aktif");
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
        Schema::dropIfExists('form_data');
    }
}
