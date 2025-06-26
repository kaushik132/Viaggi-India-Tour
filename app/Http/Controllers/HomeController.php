<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\HomeBanner;
use App\Models\Destinations;
use App\Models\Tourdetails;
use App\Models\Region;
use App\Models\Testimonial;

class HomeController extends Controller
{
    function index()
    {
        //      $canocial ='https://bbsmituni.com';

        //     $homepage = Title::first();
        //   $seo_data['seo_title'] = $homepage->seo_title_home;
        //   $seo_data['seo_description'] = $homepage->seo_des_home;
        //   $seo_data['keywords'] = $homepage->seo_key_home;
        $banners = HomeBanner::latest()->get();
        $testimonials = Testimonial::latest()->take(6)->get(); 
        return view('home', compact('banners','testimonials'));

         // ya all()
   // return view('home', compact('testimonials'));
    }


    function contact()
    {
        return view('contact');
    }

    function contactPost(Request $request)
    {
        $request->validate([
           'name' => ['required', 'string', 'regex:/^[a-zA-Z\s]+$/', 'max:255'],
            'email' =>  ['required', 'regex:/^[a-zA-Z0-9._%+-]+@gmail\.com$/'],
            'message' => 'required|string|max:1000',
        ], [
            'name.required' => 'Please enter your Full Name.',
            'email.required' => 'Please enter your email address.',
            'email.email' => 'Please enter a valid email address.',
            'message.required' => 'Please enter your message.',
            'message.max' => 'Your message may not be greater than 1000 characters.',
        ]);



        Contact::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'message' => $request->input('message'),
        ]);

        return redirect()->back()->with('success', 'Thank you for contacting us!');
    }

    function destination($slug = null)
    {
        // $homepage = Title::select('seo_title_blog','seo_des_blog','seo_key_blog')->first();
        if ($slug != null) {
            $destinationCategory = Region::where('slug', $slug)->first();
            $destinationsList = Destinations::latest()->with('regionCategory')->where('region_id', $destinationCategory->id)->paginate(6);
            //            $seo_data['seo_description'] =$blogCategory->seo_description;
            //    $seo_data['keywords'] =$blogCategory->seo_keyword;
            //    $seo_data['seo_title'] =$blogCategory->seo_title;

        } else {
            $destinationsList = Destinations::latest()->with('regionCategory')->paginate(6);
            //      $seo_data['seo_description'] =$homepage->seo_des_blog;
            //    $seo_data['keywords'] =$homepage->seo_key_blog;
            //    $seo_data['seo_title'] =$homepage->seo_title_blog;

        }

        $fillter = Region::all();
        return view('destination', compact('destinationsList', 'fillter'));
    }
    function destinationDetails($slug = null)
    {
        $destinationsData = Destinations::with('regionCategory')->where('slug', $slug)->first();
        //       $seo_data['seo_title'] =$destinationsData->seo_title;
        //   $seo_data['seo_description'] =$destinationsData->description;
        //   $seo_data['keywords'] =$destinationsData->keywords;
        $destinationsdetails = Tourdetails::orderBy('order_num', 'asc')->where('tour_id', $destinationsData->id)->get();
        return view('destinationdetail', compact('destinationsData', 'destinationsdetails'));
    }


    function package()
    {
               $banners = HomeBanner::latest()->get();
        return view('package',compact('banners'));
    }


    function packageDetails()
    {
        return view('packageDetails');
    }

}
