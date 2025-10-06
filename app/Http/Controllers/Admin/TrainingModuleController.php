<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TrainingModule;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class TrainingModuleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): Response
    {
        $trainingModules = TrainingModule::orderBy('order')->get();

        return Inertia::render('Admin/TrainingModules/Index', [
            'trainingModules' => $trainingModules,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return Inertia::render('Admin/TrainingModules/Create');
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
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        TrainingModule::create($validated);

        return redirect()->route('admin.training-modules.index')->with('success', 'Training module created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(TrainingModule $trainingModule): Response
    {
        return Inertia::render('Admin/TrainingModules/Show', [
            'trainingModule' => $trainingModule,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(TrainingModule $trainingModule): Response
    {
        return Inertia::render('Admin/TrainingModules/Edit', [
            'trainingModule' => $trainingModule,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, TrainingModule $trainingModule): RedirectResponse
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'description_en' => 'required|string',
            'title_pl' => 'required|string|max:255',
            'description_pl' => 'required|string',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        $trainingModule->update($validated);

        return redirect()->route('admin.training-modules.index')->with('success', 'Training module updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(TrainingModule $trainingModule): RedirectResponse
    {
        $trainingModule->delete();

        return redirect()->route('admin.training-modules.index')->with('success', 'Training module deleted successfully!');
    }
}
