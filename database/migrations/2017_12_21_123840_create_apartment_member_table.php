<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApartmentMemberTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apartment_member', function (Blueprint $table) {
            $table->integer('apartment_id');
            $table->integer('member_id');
            $table->string('apartment_member_role_code',20);
            $table->date('apartment_member_date');
            $table->boolean('apartment_member_active_flag');
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
        Schema::dropIfExists('apartment_member');
    }
}
