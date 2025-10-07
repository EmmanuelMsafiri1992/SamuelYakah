<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Faq;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): Response
    {
        $query = Faq::query()->orderBy($request->get('sort', 'order'), $request->get('direction', 'asc'));

        if ($request->has('search')) {
            $search = $request->get('search');
            $query->where(function ($q) use ($search) {
                $q->where('question_en', 'like', "%{$search}%")
                  ->orWhere('question_pl', 'like', "%{$search}%")
                  ->orWhere('answer_en', 'like', "%{$search}%")
                  ->orWhere('answer_pl', 'like', "%{$search}%");
            });
        }

        $faqs = $query->get()->map(function ($faq) {
            return [
                'id' => $faq->id,
                'question' => $faq->question_en,
                'answer' => $faq->answer_en,
                'order' => $faq->order,
                'is_active' => $faq->active,
            ];
        });

        return Inertia::render('Admin/Faqs/Index', [
            'faqs' => [
                'data' => $faqs,
                'total' => $faqs->count(),
                'from' => 1,
                'to' => $faqs->count(),
                'links' => [],
            ],
            'filters' => [
                'search' => $request->get('search'),
                'sort' => $request->get('sort', 'order'),
                'direction' => $request->get('direction', 'asc'),
            ],
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return Inertia::render('Admin/Faqs/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'question_en' => 'required|string',
            'answer_en' => 'required|string',
            'question_pl' => 'required|string',
            'answer_pl' => 'required|string',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        Faq::create($validated);

        return redirect()->route('admin.faqs.index')->with('success', 'FAQ created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Faq $faq): Response
    {
        return Inertia::render('Admin/Faqs/Show', [
            'faq' => $faq,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Faq $faq): Response
    {
        return Inertia::render('Admin/Faqs/Edit', [
            'faq' => $faq,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Faq $faq): RedirectResponse
    {
        $validated = $request->validate([
            'question_en' => 'required|string',
            'answer_en' => 'required|string',
            'question_pl' => 'required|string',
            'answer_pl' => 'required|string',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        $faq->update($validated);

        return redirect()->route('admin.faqs.index')->with('success', 'FAQ updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Faq $faq): RedirectResponse
    {
        $faq->delete();

        return redirect()->route('admin.faqs.index')->with('success', 'FAQ deleted successfully!');
    }
}
