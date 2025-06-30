<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Package;
use App\Models\Destinations;

class SitemapController extends Controller
{
       public function index(){
           $packages = Package::all();
           $destinations = Destinations::all();

        return response()->view('sitemap',[
            'packages'=> $packages,
        'destinations'=>$destinations 
        ])->header('Content-Type','text/xml');
    }
}
