<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\{Http,Session};

class UserController extends Controller
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
    public function index(){
        return view('user.index');
    }

    /**
     * Show if user auth not third party or not
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function sso(){
        $url = config('app.url');
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . Session::get('access_token'),
        ])->get("{$url}/api/sso")->object();
        return view('user.sso-result',['is_sso'=>$response->status]);
    }
}
