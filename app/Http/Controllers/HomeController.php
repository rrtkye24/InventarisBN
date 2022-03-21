<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Auth\Notifications;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $notification = auth()->user()->unreadNotifications;
       // dd($notification);
        return view('home', compact('notification'));

    }
    
    public function markNotification(Request $req){
        auth()->user()
        ->unreadNotifications
        ->when($req->input('id'), function($query) use ($req){
            return $query->where('id', $req->input('id'));
        })->markAsRead();

        return response()->noContent();
    }
}
