<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApartmentMemberAccountTransactionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartment_member_account_transaction', function (Blueprint $table) {
            $table->integer('apartment_id');
            $table->integer('member_id');
            $table->date('transaction_date');
            $table->integer('pbs_number');
            $table->integer('member_number');
            $table->integer('invoice_number');
            $table->integer('booking_entry_number');
            $table->string('transaction_type_code',20);
            $table->string('transaction_currency',3);
            $table->decimal('transaction_amount',10,2);
            $table->decimal('account_balance_amount',10,2); 
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
        Schema::dropIfExists('apartment_member_account_transaction');
    }
}
