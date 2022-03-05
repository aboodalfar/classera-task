<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

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
        $user = Auth::user();
        Session::put('access_token',$user->createToken('app', ['*'])->accessToken);
        if($user->role == 'admin'){
            return redirect()->route('admin.index');
        }
        else if($user->role == 'user'){
            return redirect()->route('user.index');
        }
    }
}
