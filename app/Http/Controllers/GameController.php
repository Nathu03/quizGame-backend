<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Http;

class GameController extends Controller
{
    public function getDataFromApi(Request $request)
    {

        $accessToken = $request->cookie('jwt');

        $apiEndpoint = "https://marcconrad.com/uob/tomato/api.php";

        try {
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $accessToken,
            ])->get($apiEndpoint);

            if ($response->failed()) {
                return response()->json(['error' => 'Failed to fetch data from the API'], 500);
            }

            $data = $response->json();

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to fetch data from the API'], 500);
        }
    }
}
