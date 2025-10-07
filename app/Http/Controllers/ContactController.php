<?php

namespace App\Http\Controllers;

use App\Traits\LoadsSettings;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ContactController extends Controller
{
    use LoadsSettings;

    public function index()
    {
        return Inertia::render('Contact/Index', [
            'settings' => $this->getSettings(),
            'currentLocale' => $this->getCurrentLocale(),
        ]);
    }
}
