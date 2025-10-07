<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CareJob;
use App\Models\NewsArticle;
use App\Models\JobApplication;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class DashboardController extends Controller
{
    /**
     * Display the admin dashboard with statistics.
     */
    public function index(): Response
    {
        // Applications statistics
        $totalApplications = JobApplication::count();
        $pendingApplications = JobApplication::where('status', 'pending')->count();
        $reviewingApplications = JobApplication::where('status', 'reviewing')->count();
        $approvedApplications = JobApplication::where('status', 'approved')->count();
        $rejectedApplications = JobApplication::where('status', 'rejected')->count();

        // Jobs statistics
        $totalJobPositions = CareJob::count();
        $activeJobPositions = CareJob::where('is_active', true)->count();

        // News statistics
        $totalNews = NewsArticle::count();
        $publishedNews = NewsArticle::where('is_published', true)->count();

        // Combine all statistics
        $stats = [
            'totalApplications' => $totalApplications,
            'pendingApplications' => $pendingApplications,
            'reviewingApplications' => $reviewingApplications,
            'approvedApplications' => $approvedApplications,
            'rejectedApplications' => $rejectedApplications,
            'totalJobPositions' => $totalJobPositions,
            'activeJobPositions' => $activeJobPositions,
            'totalNews' => $totalNews,
            'publishedNews' => $publishedNews,
            'totalSections' => 0, // Placeholder - add model when available
            'totalBenefits' => 0, // Placeholder - add model when available
            'trainingModules' => 0, // Placeholder - add model when available
            'activeFaqs' => 0, // Placeholder - add model when available
            'applicationsThisMonth' => JobApplication::whereMonth('created_at', now()->month)->count(),
            'applicationsToday' => JobApplication::whereDate('created_at', today())->count(),
        ];

        // Recent applications (last 5)
        $recentApplications = JobApplication::latest()
            ->take(5)
            ->get();

        return Inertia::render('Admin/Dashboard/Index', [
            'stats' => $stats,
            'recentApplications' => $recentApplications,
        ]);
    }
}
