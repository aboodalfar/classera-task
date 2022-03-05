<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{User, ThirdPartyUser};
use Illuminate\Support\Str;
use App\Http\Resources\UserCollection;
use Illuminate\Support\Facades\Hash;

/**
 * @OA\Info(
 *      version="1.0.0",
 *      title="Laravel OpenApi Demo Documentation",
 *      description="L5 Swagger OpenApi description",
 *      @OA\Contact(
 *          email="admin@admin.com"
 *      ),
 *      @OA\License(
 *          name="Apache 2.0",
 *          url="http://www.apache.org/licenses/LICENSE-2.0.html"
 *      )
 * )
 *
 * @OA\Server(
 *      url=L5_SWAGGER_CONST_HOST,
 *      description="Demo API Server"
 * )

 *
 * @OA\Tag(
 *     name="Projects",
 *     description="API Endpoints of Projects"
 * )
 */
class APIController extends Controller
{

    /**
     * @OA\Get(
     *      path="/sync",
     *      operationId="sync users",
     *      description="sync users",
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *       ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthenticated",
     *      ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     *     )
     */
    public function sync(Request $request)
    {
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
     * @OA\Get(
     *      path="/add-user",
     *      description="add new users to DB",
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *       ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthenticated",
     *      ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     *     )
     */
    public function addUser(Request $request)
    {
        \DB::beginTransaction();
        try {
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
            return response()->json(['status' => true]);
        } catch (\Exception $ex) {
            \DB::rollBack();
            return response()->json(['status' => false]);
        }
    }

    /**
     * @OA\Get(
     *      path="/sso",
     *      description="sso user",
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *       ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthenticated",
     *      ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     *     )
     */
    public function sso(Request $request)
    {
        $user =  $this->getUser();
        return response()->json(['status' => ThirdPartyUser::query()->where('email', $user->email)->exists()]);
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
