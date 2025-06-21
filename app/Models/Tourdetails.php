<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tourdetails extends Model
{
      protected $primaryKey = 'id';
    protected $table = 'toure_details_insert';
    protected $fillable = ['order_num','name','description','tour_id'];
   
    public function tourdata()
    {
        return $this->belongsTo(Destinations::class,'tour_id','id');
    }
     
}
