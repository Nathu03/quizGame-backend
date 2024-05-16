<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;

class AuthController extends Controller
{
    public function register(Request $request)
    {

        $user = User::create([
            "name" => $request->input('name'),
            "email" => $request->input('email'),
            "password" => Hash::make($request->input('password')),
        ]);

        return $user;
    }
    public function login(Request $request)
    {


        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid credentials!'], status: Response::HTTP_UNAUTHORIZED);
        }

        $user = Auth::user();
        
        $token =$user->createToken('token')->plainTextToken;

        $cookie = cookie(name:'jwt', value:$token, minutes:60*24); //oneday
        return response([
            'message'=> "'Success:'. $token",
        ])->withCookie($cookie);

    }

    public function logout()
    {
        $cookie = Cookie::forget('jwt');

        return response(['message'=> 'Logout successfully'])->withCookie($cookie);

    }

    public function user(Request $request)
    {
        $user = Auth::user();
        return $user;
    }
}
