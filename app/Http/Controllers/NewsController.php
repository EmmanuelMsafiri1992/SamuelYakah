<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Inertia\Inertia;

class NewsController extends Controller
{
    public function index()
    {
        $settings = Setting::all()->keyBy('key');

        return Inertia::render('News/Index', [
            'settings' => $settings,
        ]);
    }
}
