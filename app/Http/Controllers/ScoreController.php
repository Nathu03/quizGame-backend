<?php

namespace App\Http\Controllers;

use App\Models\Score;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ScoreController extends Controller
{
    public function saveGameData(Request $request)
    {
        $user = Auth::user();

        $score = Score::create([
            'coins' => $request->coins,
            'level' => $request->level,
            'life_count' => $request->life_count,
            'time_remaining' => $request->time_remaining,
            'selected_level' => $request->selected_level,
            'selected_category' => $request->selected_category,
            'user_id' => $user->id,
        ]);

        return response()->json(['message' => 'Game data saved successfully', 'data' => $score], 201);
    }

    public function index()
    {
        $scores = Score::orderBy('coins', 'desc')->get();

        return response()->json(['scores' => $scores], 200);
    }
}
