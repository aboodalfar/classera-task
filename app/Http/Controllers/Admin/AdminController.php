<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\{Http,Session};
use App\Http\Controllers\Controller;

class AdminController extends Controller
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
        return view('admin.index');
    }

    /**
     * sync user not synced yet
     *
     * @return Illuminate\Http\JsonResponse
     */
    public function sync(){
        $url = config('app.url');
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . Session::get('access_token'),
        ])->get("{$url}/api/sync?not_synced=true")->object();
        return response()->json($response);
    }

    /**
     * add new user
     *
     * @return Illuminate\Http\JsonResponse
     */
    public function addUser(Request $request){
        $this->validate($request,[
            'email'=>'required|unique:main_users',
            'password'=>'required'
        ]);
        $url = config('app.url');
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . Session::get('access_token'),
        ])->post("{$url}/api/add-user",$request->post())->object();
        return response()->json($response);
    }




}
