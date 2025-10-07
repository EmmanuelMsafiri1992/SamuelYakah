<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Inertia\Inertia;

class LiveInCareController extends Controller
{
    public function index()
    {
        $settings = Setting::all()->keyBy('key');

        return Inertia::render('LiveInCare/Index', [
            'settings' => $settings,
        ]);
    }
}
