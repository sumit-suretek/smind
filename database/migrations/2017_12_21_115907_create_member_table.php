<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemberTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member', function (Blueprint $table) {
            $table->increments('member_id');
            $table->string('member_number',10);
            $table->string('member_full_name',30);
            $table->string('member_alias_name',30);
            $table->string('member_residence_address',30);
            $table->string('member_postal_code',10);
            $table->string('member_city',10);
            $table->string('member_residence_country',3);
            $table->string('member_phone_number',20);
            $table->string('member_email',30);
            $table->date('member_open_date');
            $table->date('member_change_date');
            $table->date('member_close_date');
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
        Schema::dropIfExists('member');
    }
}
