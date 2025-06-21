<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact; 
use App\Models\HomeBanner;

class HomeController extends Controller
{
    function index()
    {
        $banners = HomeBanner::latest()->get();
        return view('home',compact('banners'));
    }


    function contact()
    {
        return view('contact');
    }

    function contactPost(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string|max:1000',
        ],[
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
}
