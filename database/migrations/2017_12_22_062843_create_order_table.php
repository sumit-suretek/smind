<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order', function (Blueprint $table) {
            $table->increments('order_id');
            $table->integer('requestor_member_id');
            $table->integer('requested_supplier_id');
            $table->string('issue_description',150);
            $table->string('requestor_contact_name',30);
            $table->string('requestor_address',30);
            $table->string('requestor_contact_phone',20);
            $table->string('requestor_contact_email',30);
            $table->date('request_wished_date');
            $table->boolean('24_hour_time_display_flag');
            $table->integer('visiting_hours_from');
            $table->string('visiting_hours_from_am/pm',2);
            $table->integer('visiting_hours_till');
            $table->string('visiting_hours_till_am/pm',2);
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
        Schema::dropIfExists('order');
    }
}
