<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Section;
use App\Models\SectionTranslation;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): Response
    {
        $query = Section::with('translations')
            ->orderBy($request->get('sort', 'order'), $request->get('direction', 'asc'));

        if ($request->has('search')) {
            $search = $request->get('search');
            $query->whereHas('translations', function ($q) use ($search) {
                $q->where('title', 'like', "%{$search}%");
            });
        }

        $sections = $query->get()->map(function ($section) {
            $enTranslation = $section->translations->firstWhere('locale', 'en');
            return [
                'id' => $section->id,
                'identifier' => $section->key,
                'title' => $enTranslation?->title ?? 'N/A',
                'order' => $section->order,
                'is_active' => $section->active,
            ];
        });

        return Inertia::render('Admin/Sections/Index', [
            'sections' => [
                'data' => $sections,
                'total' => $sections->count(),
                'from' => 1,
                'to' => $sections->count(),
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
        return Inertia::render('Admin/Sections/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'key' => 'required|string|max:255|unique:sections,key',
            'type' => 'required|string|max:100',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
            'translations' => 'required|array',
            'translations.*.locale' => 'required|string|in:en,pl',
            'translations.*.title' => 'required|string|max:255',
            'translations.*.subtitle' => 'nullable|string|max:255',
            'translations.*.content' => 'nullable|string',
            'translations.*.meta' => 'nullable|array',
        ]);

        $section = Section::create([
            'key' => $validated['key'],
            'type' => $validated['type'],
            'order' => $validated['order'],
            'active' => $validated['active'],
        ]);

        foreach ($validated['translations'] as $translation) {
            $section->translations()->create($translation);
        }

        return redirect()->route('admin.sections.index')->with('success', 'Section created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Section $section): Response
    {
        $section->load('translations');

        return Inertia::render('Admin/Sections/Show', [
            'section' => $section,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Section $section): Response
    {
        $section->load('translations');

        return Inertia::render('Admin/Sections/Edit', [
            'section' => $section,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Section $section): RedirectResponse
    {
        $validated = $request->validate([
            'key' => 'required|string|max:255|unique:sections,key,' . $section->id,
            'type' => 'required|string|max:100',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
            'translations' => 'required|array',
            'translations.*.id' => 'nullable|integer|exists:section_translations,id',
            'translations.*.locale' => 'required|string|in:en,pl',
            'translations.*.title' => 'required|string|max:255',
            'translations.*.subtitle' => 'nullable|string|max:255',
            'translations.*.content' => 'nullable|string',
            'translations.*.meta' => 'nullable|array',
        ]);

        $section->update([
            'key' => $validated['key'],
            'type' => $validated['type'],
            'order' => $validated['order'],
            'active' => $validated['active'],
        ]);

        // Update or create translations
        foreach ($validated['translations'] as $translationData) {
            if (isset($translationData['id'])) {
                // Update existing translation
                $translation = SectionTranslation::find($translationData['id']);
                if ($translation && $translation->section_id === $section->id) {
                    $translation->update($translationData);
                }
            } else {
                // Create new translation
                $section->translations()->create($translationData);
            }
        }

        return redirect()->route('admin.sections.index')->with('success', 'Section updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Section $section): RedirectResponse
    {
        $section->translations()->delete();
        $section->delete();

        return redirect()->route('admin.sections.index')->with('success', 'Section deleted successfully!');
    }
}
