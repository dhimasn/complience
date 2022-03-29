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
            $table->integer('category_product_id');
            $table->text('data_point');
            $table->string('data_entry_type');
            $table->text('data_input')->nullable();
            $table->tinyInteger('mandatory');
            $table->text('notes');
            $table->tinyInteger('jenis_form');
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
