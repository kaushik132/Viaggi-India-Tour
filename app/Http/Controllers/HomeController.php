<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\HomeBanner;
use App\Models\Destinations;
use App\Models\Tourdetails;
use App\Models\Region;
use App\Models\Testimonial;
use \App\Models\Package;
use \App\Models\Packagedetails;
use \App\Models\Budget;
use \App\Models\Duration;
use \App\Models\TravelerType;
use \App\Models\ExperienceType;

class HomeController extends Controller
{
    function index()
    {

        //     $homepage = Title::first();
        //   $seo_data['seo_title'] = $homepage->seo_title_home;
        //   $seo_data['seo_description'] = $homepage->seo_des_home;
        //   $seo_data['keywords'] = $homepage->seo_key_home;
        //      $canocial ='https://bbsmituni.com';
        $banners = HomeBanner::latest()->get();
        $testimonials = Testimonial::latest()->take(6)->get();
        return view('home', compact('banners', 'testimonials'));
       
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
        $alltour = Package::inRandomOrder()->with('regionCategorys')->get();
        $destinationsData = Destinations::with('regionCategory')->where('slug', $slug)->first();
        //       $seo_data['seo_title'] =$destinationsData->seo_title;
        //   $seo_data['seo_description'] =$destinationsData->description;
        //   $seo_data['keywords'] =$destinationsData->keywords;
        $destinationsdetails = Tourdetails::orderBy('order_num', 'asc')->where('tour_id', $destinationsData->id)->get();
        return view('destinationdetail', compact('destinationsData', 'destinationsdetails', 'alltour'));
    }


    // function package($slug = null)
    // {
    //         // $homepage = Title::select('seo_title_blog','seo_des_blog','seo_key_blog')->first();
    //     if ($slug != null) {
    //         $packageCategory = Region::where('slug', $slug)->first();
    //         $packageList = Package::latest()->with('regionCategorys')->where('region_id', $packageCategory->id)->paginate(6);
    //         //            $seo_data['seo_description'] =$blogCategory->seo_description;
    //         //    $seo_data['keywords'] =$blogCategory->seo_keyword;
    //         //    $seo_data['seo_title'] =$blogCategory->seo_title;

    //     } else {
    //         $packageList = Package::latest()->with('regionCategorys')->paginate(6);
    //         //      $seo_data['seo_description'] =$homepage->seo_des_blog;
    //         //    $seo_data['keywords'] =$homepage->seo_key_blog;
    //         //    $seo_data['seo_title'] =$homepage->seo_title_blog;

    //     }
    //            $banners = HomeBanner::latest()->get();
    //            $region = Region::latest()->get();
    //            $budget = Budget::latest()->get();
    //            $duration = Duration::latest()->get();
    //            $traveler = TravelerType::latest()->get();
    //            $experience = ExperienceType::latest()->get();
    //     return view('package',compact('packageList','banners','region','budget','duration','traveler','experience'));
    // }


    public function package(Request $request, $slug = null)
    {
        $query = Package::query()->latest()->with('regionCategorys');

        // Slug based filtering (e.g., /package/rajasthan)
        if ($slug !== null) {
            $packageCategory = Region::where('slug', $slug)->first();

            if ($packageCategory) {
                $query->where('region_id', $packageCategory->id);
            }
        }

        // GET based filtering
        if ($request->filled('region')) {
            $query->where('region_id', $request->region);
        }

        if ($request->filled('budget')) {
            $query->where('budget_id', $request->budget);
        }

        if ($request->filled('duration')) {
            $query->where('duration_id', $request->duration);
        }

        if ($request->filled('traveler')) {
            $query->where('traveler_id', $request->traveler);
        }

        if ($request->filled('experience')) {
            $query->where('experience_id', $request->experience);
        }

        // Final result with pagination
        $packageList = $query->paginate(6)->appends($request->query());

        // Filter dropdown values
        $banners    = HomeBanner::latest()->get();
        $region     = Region::latest()->get();
        $budget     = Budget::latest()->get();
        $duration   = Duration::latest()->get();
        $traveler   = TravelerType::latest()->get();
        $experience = ExperienceType::latest()->get();

        return view('package', compact(
            'packageList',
            'banners',
            'region',
            'budget',
            'duration',
            'traveler',
            'experience'
        ));
    }


    function packageDetails($slug = null)
    {
        $alltour = Package::inRandomOrder()->with('regionCategorys')->get();
        $packageData = Package::with('regionCategorys')->where('slug', $slug)->first();
        $destinationsdetails = Packagedetails::orderBy('order_num', 'asc')->where('package_id', $packageData->id)->get();
        return view('packageDetails', compact('packageData', 'destinationsdetails', 'alltour'));
    }
}
