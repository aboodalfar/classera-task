<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{User,ThirdPartyUser};
use Illuminate\Support\Str;
use App\Http\Resources\UserCollection;
use Illuminate\Support\Facades\Hash;

class APIController extends Controller
{

    public function sync(Request $request){
        $users = User::filter($request->all())->get();
        foreach ($users as $user) {
            $t_user = new ThirdPartyUser();
            $t_user->id = Str::uuid()->toString();
            $t_user->email = $user->email;
            $t_user->role = $user->role;
            $t_user->save();
        }
        User::query()->update(['is_synced' => true]);
        return new UserCollection($users);
    }
    /**
     * add new user to DB
     *
     * @return Illuminate\Http\JsonResponse
     */
    public function addUser(Request $request){
        \DB::beginTransaction();
        try{
            $data = $request->post();
            $user = new User();
            $user->role = 'user';
            $user->email = $data['email'];
            $user->password =  Hash::make($data['password']);
            $user->is_synced = true;
            $user->save();
            $t_user = new ThirdPartyUser();
            $t_user->id = Str::uuid()->toString();
            $t_user->email = $data['email'];
            $t_user->password =  Hash::make($data['password']);
            $t_user->role = 'user';
            $t_user->save();
            \DB::commit();
            return response()->json(['status'=>true]);
        }
        catch(\Exception $ex){
            \DB::rollBack();
            return response()->json(['status'=>false]);
        }
    }
    /**
     * add new user to DB
     *
     * @return Illuminate\Http\JsonResponse
     */
    public function sso(Request $request){
        $user =  $this->getUser();
        return response()->json(['status'=>ThirdPartyUser::query()->where('email',$user->email)->exists()]);
    }

    /**
     * get auth user
     *
     * @return User
     */
    public function getUser(): User
    {
        return auth('api')->user();
    }
}
