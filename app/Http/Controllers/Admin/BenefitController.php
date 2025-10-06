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
    public function index(): Response
    {
        $benefits = Benefit::orderBy('order')->get();

        return Inertia::render('Admin/Benefits/Index', [
            'benefits' => $benefits,
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
