<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSupplierTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier', function (Blueprint $table) {
            $table->increments('supplier_id');
            $table->string('supplier_full_name',30);
            $table->string('supplier_alias_name',30);
            $table->string('supplier_business_address',30);
            $table->string('supplier_postal_code',10);
            $table->string('supplier_city',10);
            $table->string('supplier_phone_number',20);
            $table->string('supplier_email',30);
            $table->string('supplier_customer_number',30);
            $table->string('supplier_cvr_number',8);
            $table->string('supplier_bank_account_number',30);
            $table->date('supplier_open_date');
            $table->date('supplier_change_date');
            $table->date('supplier_close_date');
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
        Schema::dropIfExists('supplier');
    }
}
