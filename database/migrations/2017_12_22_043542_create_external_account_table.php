<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExternalAccountTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('external_account', function (Blueprint $table) {
            $table->integer('external_account_id');
            $table->string('external_account_number',30);
            $table->string('external_account_name',30);
            $table->date('external_account_open_date');
            $table->date('external_account_change_date');
            $table->date('external_account_close_date');
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
        Schema::dropIfExists('external_account');
    }
}
