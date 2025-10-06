<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
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
        // Total applications count
        $totalApplications = JobApplication::count();

        // Recent applications (last 10)
        $recentApplications = JobApplication::latest()
            ->take(10)
            ->get();

        // Statistics by status
        $statistics = [
            'total' => $totalApplications,
            'pending' => JobApplication::where('status', 'pending')->count(),
            'reviewing' => JobApplication::where('status', 'reviewing')->count(),
            'approved' => JobApplication::where('status', 'approved')->count(),
            'rejected' => JobApplication::where('status', 'rejected')->count(),
        ];

        // Applications by month (current year)
        $applicationsByMonth = JobApplication::selectRaw('MONTH(created_at) as month, COUNT(*) as count')
            ->whereYear('created_at', date('Y'))
            ->groupBy('month')
            ->orderBy('month')
            ->pluck('count', 'month')
            ->toArray();

        return Inertia::render('Admin/Dashboard/Index', [
            'totalApplications' => $totalApplications,
            'recentApplications' => $recentApplications,
            'statistics' => $statistics,
            'applicationsByMonth' => $applicationsByMonth,
        ]);
    }
}
