<?php

namespace App\Http\Controllers;

use App\Models\JobApplication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class JobApplicationController extends Controller
{
    /**
     * Show the form for creating a new job application.
     */
    public function create(): Response
    {
        return Inertia::render('JobApplication/Create');
    }

    /**
     * Store a newly created job application in storage.
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
            'cv' => 'required|file|mimes:pdf,doc,docx|max:10240', // Max 10MB
        ]);

        // Handle CV file upload
        if ($request->hasFile('cv')) {
            $cvPath = $request->file('cv')->store('cvs', 'public');
            $validated['cv_path'] = $cvPath;
        }

        // Remove the 'cv' key as we're storing it as 'cv_path'
        unset($validated['cv']);

        // Set default status
        $validated['status'] = 'pending';

        // Create the job application
        JobApplication::create($validated);

        return redirect()->route('home')->with('success', 'Your application has been submitted successfully!');
    }
}
