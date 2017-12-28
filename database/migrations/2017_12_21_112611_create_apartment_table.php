<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApartmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartment', function (Blueprint $table) {
            $table->increments('apartment_id');
            $table->integer('property_id');
            $table->string('apartment_number',20);
            $table->string('apartment_address',30);
            $table->integer('apartment_square_meters');
            $table->integer('apartment_share');
            $table->string('apartment_allocation_key');
            $table->date('apartment_open_date');
            $table->date('apartment_change_date');
            $table->date('apartment_close_date');
            $table->integer('created_by')->nullable();
            $table->integer('modified_by')->nullable();
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
        Schema::dropIfExists('apartment');
    }
}
