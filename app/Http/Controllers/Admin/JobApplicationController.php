<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\JobApplication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class JobApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): Response
    {
        $query = JobApplication::query();

        // Filter by status if provided
        if ($request->has('status') && $request->status !== 'all') {
            $query->where('status', $request->status);
        }

        // Search functionality
        if ($request->has('search') && $request->search !== '') {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('first_name', 'like', "%{$search}%")
                  ->orWhere('last_name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('phone', 'like', "%{$search}%");
            });
        }

        $applications = $query->latest()->paginate(15);

        return Inertia::render('Admin/JobApplications/Index', [
            'applications' => $applications,
            'filters' => $request->only(['status', 'search']),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return Inertia::render('Admin/JobApplications/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:20',
            'address' => 'required|string|max:500',
            'nationality' => 'required|string|max:100',
            'date_of_birth' => 'required|date|before:today',
            'experience' => 'nullable|string',
            'qualifications' => 'nullable|string',
            'has_right_to_work' => 'required|boolean',
            'has_driving_license' => 'required|boolean',
            'cv' => 'nullable|file|mimes:pdf,doc,docx|max:10240',
            'status' => 'required|string|in:pending,reviewing,approved,rejected',
            'notes' => 'nullable|string',
        ]);

        // Handle CV file upload
        if ($request->hasFile('cv')) {
            $cvPath = $request->file('cv')->store('cvs', 'public');
            $validated['cv_path'] = $cvPath;
        }

        // Remove the 'cv' key as we're storing it as 'cv_path'
        unset($validated['cv']);

        JobApplication::create($validated);

        return redirect()->route('admin.job-applications.index')->with('success', 'Application created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(JobApplication $jobApplication): Response
    {
        return Inertia::render('Admin/JobApplications/Show', [
            'application' => $jobApplication,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobApplication $jobApplication): Response
    {
        return Inertia::render('Admin/JobApplications/Edit', [
            'application' => $jobApplication,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobApplication $jobApplication): RedirectResponse
    {
        $validated = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:20',
            'address' => 'required|string|max:500',
            'nationality' => 'required|string|max:100',
            'date_of_birth' => 'required|date|before:today',
            'experience' => 'nullable|string',
            'qualifications' => 'nullable|string',
            'has_right_to_work' => 'required|boolean',
            'has_driving_license' => 'required|boolean',
            'cv' => 'nullable|file|mimes:pdf,doc,docx|max:10240',
            'status' => 'required|string|in:pending,reviewing,approved,rejected',
            'notes' => 'nullable|string',
        ]);

        // Handle CV file upload
        if ($request->hasFile('cv')) {
            // Delete old CV if exists
            if ($jobApplication->cv_path) {
                Storage::disk('public')->delete($jobApplication->cv_path);
            }
            $cvPath = $request->file('cv')->store('cvs', 'public');
            $validated['cv_path'] = $cvPath;
        }

        // Remove the 'cv' key as we're storing it as 'cv_path'
        unset($validated['cv']);

        $jobApplication->update($validated);

        return redirect()->route('admin.job-applications.index')->with('success', 'Application updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobApplication $jobApplication): RedirectResponse
    {
        // Delete CV file if exists
        if ($jobApplication->cv_path) {
            Storage::disk('public')->delete($jobApplication->cv_path);
        }

        $jobApplication->delete();

        return redirect()->route('admin.job-applications.index')->with('success', 'Application deleted successfully!');
    }
}
