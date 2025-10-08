<?php

namespace App\Http\Controllers;

use App\Traits\LoadsSettings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class NewsController extends Controller
{
    use LoadsSettings;

    public function index()
    {
        $articles = DB::table('news_articles')
            ->where('is_published', true)
            ->orderBy('created_at', 'desc')
            ->get();

        return Inertia::render('News/Index', [
            'settings' => $this->getSettings(),
            'currentLocale' => $this->getCurrentLocale(),
            'articles' => $articles,
        ]);
    }
}
