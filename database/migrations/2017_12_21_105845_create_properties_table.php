<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->increments('property_id');
            $table->string('name',30);
            $table->string('address',30);
            $table->string('land_register_number',20);
            $table->string('national_property_number',20);
            $table->string('bbr_number',30);
            $table->integer('pbs_number');
            $table->integer('property_construction_year');
            $table->integer('property_square_meters');
            $table->integer('apartment_shares_total');
            $table->boolean('rental_permitted_flag');
            $table->boolean('rental_approval_required_flag');
            $table->date('property_open_date');
            $table->date('property_change_date');
            $table->date('property_close_date');
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
        Schema::dropIfExists('properties');
    }
}
