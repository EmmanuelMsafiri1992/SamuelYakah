<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\NewsArticle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Str;
use Inertia\Inertia;

class NewsArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = NewsArticle::query()->orderBy('created_at', 'desc');

        if ($request->has('search')) {
            $search = $request->get('search');
            $query->where(function ($q) use ($search) {
                $q->where('title_en', 'like', "%{$search}%")
                  ->orWhere('title_pl', 'like', "%{$search}%")
                  ->orWhere('title_nl', 'like', "%{$search}%");
            });
        }

        $articles = $query->paginate(15);

        return Inertia::render('Admin/NewsArticles/Index', [
            'articles' => $articles,
            'filters' => [
                'search' => $request->get('search'),
            ],
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return Inertia::render('Admin/NewsArticles/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'title_pl' => 'required|string|max:255',
            'title_nl' => 'required|string|max:255',
            'excerpt_en' => 'required|string',
            'excerpt_pl' => 'required|string',
            'excerpt_nl' => 'required|string',
            'category_en' => 'required|string|max:100',
            'category_pl' => 'required|string|max:100',
            'category_nl' => 'required|string|max:100',
            'date' => 'required|string|max:50',
            'is_published' => 'boolean',
        ]);

        $validated['slug'] = Str::slug($validated['title_en']);
        $validated['is_published'] = $request->boolean('is_published', true);

        NewsArticle::create($validated);
        Cache::forget('settings_all');

        return redirect()->route('admin.news-articles.index')->with('success', 'News article created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(NewsArticle $newsArticle)
    {
        return Inertia::render('Admin/NewsArticles/Show', [
            'article' => $newsArticle,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NewsArticle $newsArticle)
    {
        return Inertia::render('Admin/NewsArticles/Edit', [
            'article' => $newsArticle,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, NewsArticle $newsArticle)
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'title_pl' => 'required|string|max:255',
            'title_nl' => 'required|string|max:255',
            'excerpt_en' => 'required|string',
            'excerpt_pl' => 'required|string',
            'excerpt_nl' => 'required|string',
            'category_en' => 'required|string|max:100',
            'category_pl' => 'required|string|max:100',
            'category_nl' => 'required|string|max:100',
            'date' => 'required|string|max:50',
            'is_published' => 'boolean',
        ]);

        $validated['slug'] = Str::slug($validated['title_en']);
        $validated['is_published'] = $request->boolean('is_published');

        $newsArticle->update($validated);
        Cache::forget('settings_all');

        return redirect()->route('admin.news-articles.index')->with('success', 'News article updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(NewsArticle $newsArticle)
    {
        $newsArticle->delete();
        Cache::forget('settings_all');

        return redirect()->route('admin.news-articles.index')->with('success', 'News article deleted successfully!');
    }
}
