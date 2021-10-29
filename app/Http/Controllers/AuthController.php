<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    function register(RegisterRequest $res)
    {
        $val = $res->validated();
        $val['password'] = Hash::make($val['password']);
        $user = User::create($val);
        return response()->json($user, 200);
    }
    function login(LoginRequest $res)
    {
        $val = $res->validated();
        if (auth('web')->attempt($val)) {
            $user = Auth::user();
            $user->tokens()->delete();
            $token = $user->createToken('APPQUASAR')->plainTextToken;

            $respo = [
                'user' => $user,
                'token' => $token
            ];
            return response()->json($respo, 200);
        } else {
            return response()->json(['msg' => 'Đăng Nhập Thất Bại'],400);
        }
    }
    function getMe()
    {
        return Auth::user();
    }
}
