<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('users', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->string('name');
        //     $table->string('email')->unique();
        //     $table->string('password');
        //     $table->rememberToken();
        //     $table->timestamps();
        // });

        Schema::create('users', function($table) {
                $table->increments('id');
                $table->string('username',30);
                $table->string('password',12);
                $table->integer('role_id',11);
                $table->string('user_full_name',30)->nullable();
                $table->string('user_residence_address',30)->nullable();
                $table->boolean('address_line2_flag')->nullable();
                $table->string('user_address_line2',30)->nullable();
                $table->boolean('address_line3_flag')->nullable();
                $table->string('user_addres_line_3',30)->nullable();
                $table->string('user_postal_code',10)->nullable();
                $table->string('user_city',10)->nullable();
                $table->string('user_residence_country',3)->nullable();
                $table->string('user_type_cd',20)->nullable();
                $table->string('user_phone_number',20)->nullable();
                $table->boolean('alternate_phone_flag')->nullable();
                $table->string('user_alternate_phone_number',20)->nullable();
                $table->string('user_email',30)->nullable();
                $table->boolean('alternate_email_flag')->nullable();
                $table->string('user_alternate_email',30)->nullable();
                $table->date('user_open_date')->nullable();
                $table->date('user_change_date')->nullable();
                $table->date('user_close_date')->nullable();
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
        Schema::dropIfExists('users');
        // Schema::table('users', function($table) {
        //         //$table->increments('id');
        //         $table->dropColumn('username',30);
        //         $table->dropColumn('password',12);
        //         $table->dropColumn('user_full_name',30);
        //         $table->dropColumn('user_residence_address',30);
        //         $table->dropColumn('address_line2_flag');
        //         $table->dropColumn('user_address_line2',30);
        //         $table->dropColumn('address_line3_flag');
        //         $table->dropColumn('user_addres_line_3',30);
        //         $table->dropColumn('user_postal_code',10);
        //         $table->dropColumn('user_city',10);
        //         $table->dropColumn('user_residence_country',3);
        //         $table->dropColumn('user_type_cd',20);
        //         $table->dropColumn('user_phone_number',20);
        //         $table->dropColumn('alternate_phone_flag');
        //         $table->dropColumn('user_alternate_phone_number',20);
        //         $table->dropColumn('user_email',30);
        //         $table->dropColumn('alternate_email_flag');
        //         $table->dropColumn('user_alternate_email',30);
        //         $table->dropColumn('user_open_date');
        //         $table->dropColumn('user_change_date');
        //         $table->dropColumn('user_close_date');
        // });
    }
}
