<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableColors444 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('colors', function (Blueprint $table) {
            $table->increments('id');
            $table->string('color');
            $table->string('session');
            $table->date('rd_card_dt');
            $table->date('received_date');
            $table->date('sub_date');
            $table->date('approved_date');
            $table->date('rejected_date');
            $table->date('re_sub_date');
            $table->string('rs_no');
            $table->string('card');
            $table->string('shade');
            $table->string('status');
            $table->string('remarks');
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
        Schema::dropIfExists('colors');
    }
}
