<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    protected $table = 'member';
    protected $primaryKey="member_id";
    protected $guarded=[];
}
