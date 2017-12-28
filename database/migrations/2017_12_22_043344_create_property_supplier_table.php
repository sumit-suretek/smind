<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertySupplierTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('property_supplier', function (Blueprint $table) {
            $table->integer('property_id');
            $table->string('supplier_id',30);
            $table->string('property_supplier_role_code',20);
            $table->date('property_user_date');
            $table->boolean('property_user_active_flag');
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
        Schema::dropIfExists('property_supplier');
    }
}
