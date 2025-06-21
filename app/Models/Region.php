<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
        protected $primaryKey = 'id';
    protected $table = 'region';
        public function destinations(){

        return $this->hasMany(Destinations::class,'region_id');
    }
}
