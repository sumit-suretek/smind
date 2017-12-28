<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApartmentMemberInvoiceItemTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartment_member_invoice_item', function (Blueprint $table) {
            $table->integer('apartment_id');
            $table->integer('member_id');
            $table->date('invoice_date');
            $table->integer('pbs_number');
            $table->integer('member_number');
            $table->integer('invoice_number');
            $table->string('invoice_item_code',30);
            $table->string('invoice_item_currency',3);
            $table->decimal('invoice_item_amount_mtd',10,2);
            $table->decimal('invoice_item_amount_ytd',10,2);
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
        Schema::dropIfExists('apartment_member_invoice_item');
    }
}
