<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $table = 'booking';

    protected $fillable = [
    'tour_name',
    'name',
    'phone_number',
    'email',
    'persons',
    'children',
    'message',
];
}
