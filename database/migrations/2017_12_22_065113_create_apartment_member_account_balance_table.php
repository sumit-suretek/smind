<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApartmentMemberAccountBalanceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartment_member_account_balance', function (Blueprint $table) {
            $table->integer('apartment_id');
            $table->integer('member_id');
            $table->date('account_balance_date');
            $table->integer('pbs_number');
            $table->string('member_number',10);
            $table->decimal('account_balance_amount', 10, 2); 
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
        Schema::dropIfExists('apartment_member_account_balance');
    }
}
