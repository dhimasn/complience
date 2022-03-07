<?php

namespace App\Http\Controllers;

use App\Enums\TypeMobileVersion;
use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    private $user_db;
    private $device_db;

    public function __construct()
    {
        $this->user_db = new UserDb();
    }

    public function LoginProcess(Request $request)
    {  
        die('a');exit;
        $a  = JsonDecode::Process($request->getContent());
        if($a->version_code == TypeMobileVersion::version_code){
            $result = $this->user_db->Login($a->user_name, $a->password);
            if($result->status)
            {
                $user = User::where("user_name", $a->user_name)->first();
                $abilities = $request->input('abilities', [
                    'order:create',
                    'order:view',
                    'WLR3:check_availability'
                ]);
                $token = $user->createToken("token", $abilities)->plainTextToken;
                return response()->json(['message' => "OK", 'code' => 200, 'token' => $token, 'result' => $result]);
            }
            else
            {
                return response()->json(['message' => "Cek Kembali Username dan Password", 'code' => 401]);
            }
        }else{
            return response()->json(['message' => TypeMobileVersion::version_name, 'code' => 406]);
        }
                
    }
}
