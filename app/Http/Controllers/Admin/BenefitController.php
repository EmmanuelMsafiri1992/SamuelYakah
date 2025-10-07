<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Benefit;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class BenefitController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): Response
    {
        $query = Benefit::query()->orderBy($request->get('sort', 'order'), $request->get('direction', 'asc'));

        if ($request->has('search')) {
            $search = $request->get('search');
            $query->where(function ($q) use ($search) {
                $q->where('title_en', 'like', "%{$search}%")
                  ->orWhere('title_pl', 'like', "%{$search}%")
                  ->orWhere('description_en', 'like', "%{$search}%")
                  ->orWhere('description_pl', 'like', "%{$search}%");
            });
        }

        $benefits = $query->get()->map(function ($benefit) {
            return [
                'id' => $benefit->id,
                'title' => $benefit->title_en,
                'description' => $benefit->description_en,
                'icon' => $benefit->icon,
                'order' => $benefit->order,
                'is_active' => $benefit->active,
            ];
        });

        return Inertia::render('Admin/Benefits/Index', [
            'benefits' => [
                'data' => $benefits,
                'total' => $benefits->count(),
                'from' => 1,
                'to' => $benefits->count(),
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
        return Inertia::render('Admin/Benefits/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'description_en' => 'required|string',
            'title_pl' => 'required|string|max:255',
            'description_pl' => 'required|string',
            'icon' => 'nullable|string|max:100',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        Benefit::create($validated);

        return redirect()->route('admin.benefits.index')->with('success', 'Benefit created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Benefit $benefit): Response
    {
        return Inertia::render('Admin/Benefits/Show', [
            'benefit' => $benefit,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Benefit $benefit): Response
    {
        return Inertia::render('Admin/Benefits/Edit', [
            'benefit' => $benefit,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Benefit $benefit): RedirectResponse
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'description_en' => 'required|string',
            'title_pl' => 'required|string|max:255',
            'description_pl' => 'required|string',
            'icon' => 'nullable|string|max:100',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        $benefit->update($validated);

        return redirect()->route('admin.benefits.index')->with('success', 'Benefit updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Benefit $benefit): RedirectResponse
    {
        $benefit->delete();

        return redirect()->route('admin.benefits.index')->with('success', 'Benefit deleted successfully!');
    }
}
