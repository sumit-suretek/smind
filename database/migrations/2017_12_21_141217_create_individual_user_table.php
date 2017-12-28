<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIndividualUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('individual_user', function (Blueprint $table) {
            $table->string('username',30);
            $table->integer('user_birth_date_number');
            $table->integer('user_birth_month_number');
            $table->integer('user_birth_year');
            $table->date('user_birth_date');
            $table->integer('user_personal_number');
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
        Schema::dropIfExists('individual_user');
    }
}
