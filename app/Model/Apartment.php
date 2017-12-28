<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Apartment extends Model
{
    protected $table = 'apartment';
    protected $primaryKey="apartment_id";
    protected $guarded=[];
}
