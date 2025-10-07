<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\JobPosition;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class JobPositionController extends Controller
{
    public function index(Request $request): Response
    {
        $query = JobPosition::query()->orderBy($request->get('sort', 'order'), $request->get('direction', 'asc'));

        if ($request->has('search')) {
            $search = $request->get('search');
            $query->where(function ($q) use ($search) {
                $q->where('title_en', 'like', "%{$search}%")
                  ->orWhere('title_pl', 'like', "%{$search}%")
                  ->orWhere('location_en', 'like', "%{$search}%")
                  ->orWhere('location_pl', 'like', "%{$search}%");
            });
        }

        $jobPositions = $query->get()->map(function ($position) {
            return [
                'id' => $position->id,
                'title' => $position->title_en,
                'location' => $position->location_en ?? 'Remote',
                'type' => $position->type,
                'order' => $position->order,
                'is_active' => $position->active,
            ];
        });

        return Inertia::render('Admin/JobPositions/Index', [
            'jobPositions' => [
                'data' => $jobPositions,
                'total' => $jobPositions->count(),
                'from' => 1,
                'to' => $jobPositions->count(),
                'links' => [],
            ],
            'filters' => [
                'search' => $request->get('search'),
                'sort' => $request->get('sort', 'order'),
                'direction' => $request->get('direction', 'asc'),
            ],
        ]);
    }

    public function create(): Response
    {
        return Inertia::render('Admin/JobPositions/Create');
    }

    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'title_pl' => 'required|string|max:255',
            'description_en' => 'required|string',
            'description_pl' => 'required|string',
            'location_en' => 'nullable|string|max:255',
            'location_pl' => 'nullable|string|max:255',
            'type' => 'required|string|in:full-time,part-time,contract',
            'salary_min' => 'nullable|numeric|min:0',
            'salary_max' => 'nullable|numeric|min:0',
            'requirements_en' => 'nullable|string',
            'requirements_pl' => 'nullable|string',
            'responsibilities_en' => 'nullable|string',
            'responsibilities_pl' => 'nullable|string',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        JobPosition::create($validated);

        return redirect()->route('admin.job-positions.index')->with('success', 'Job position created successfully!');
    }

    public function edit(JobPosition $jobPosition): Response
    {
        return Inertia::render('Admin/JobPositions/Edit', [
            'jobPosition' => $jobPosition,
        ]);
    }

    public function update(Request $request, JobPosition $jobPosition): RedirectResponse
    {
        $validated = $request->validate([
            'title_en' => 'required|string|max:255',
            'title_pl' => 'required|string|max:255',
            'description_en' => 'required|string',
            'description_pl' => 'required|string',
            'location_en' => 'nullable|string|max:255',
            'location_pl' => 'nullable|string|max:255',
            'type' => 'required|string|in:full-time,part-time,contract',
            'salary_min' => 'nullable|numeric|min:0',
            'salary_max' => 'nullable|numeric|min:0',
            'requirements_en' => 'nullable|string',
            'requirements_pl' => 'nullable|string',
            'responsibilities_en' => 'nullable|string',
            'responsibilities_pl' => 'nullable|string',
            'order' => 'required|integer|min:0',
            'active' => 'required|boolean',
        ]);

        $jobPosition->update($validated);

        return redirect()->route('admin.job-positions.index')->with('success', 'Job position updated successfully!');
    }

    public function destroy(JobPosition $jobPosition): RedirectResponse
    {
        $jobPosition->delete();

        return redirect()->route('admin.job-positions.index')->with('success', 'Job position deleted successfully!');
    }
}
