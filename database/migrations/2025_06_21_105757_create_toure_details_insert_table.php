<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateToureDetailsInsertTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('toure_details_insert', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('order_num')->nullable();
            $table->string('name')->nullable();
            $table->text('description')->nullable();
            $table->string('tour_id')->nullable();
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
        Schema::dropIfExists('toure_details_insert');
    }
}
