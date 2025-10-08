<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ContentManagementController extends Controller
{
    /**
     * Display the content management interface
     */
    public function index(Request $request)
    {
        $group = $request->get('group', 'all');
        $search = $request->get('search', '');
        $locale = $request->get('locale', 'en');

        $query = Setting::query();

        // Filter by group
        if ($group !== 'all') {
            $query->where('group', $group);
        }

        // Search
        if ($search) {
            $query->where(function($q) use ($search) {
                $q->where('key', 'like', "%{$search}%")
                  ->orWhere('description', 'like', "%{$search}%")
                  ->orWhere('value_en', 'like', "%{$search}%")
                  ->orWhere('value_pl', 'like', "%{$search}%")
                  ->orWhere('value_nl', 'like', "%{$search}%");
            });
        }

        $settings = $query->orderBy('group')->orderBy('key')->paginate(50);

        // Get all unique groups for navigation
        $groups = Setting::select('group')
            ->distinct()
            ->orderBy('group')
            ->pluck('group');

        // Get group counts
        $groupCounts = Setting::select('group', \DB::raw('count(*) as count'))
            ->groupBy('group')
            ->pluck('count', 'group');

        return Inertia::render('Admin/Content/Index', [
            'settings' => $settings,
            'groups' => $groups,
            'groupCounts' => $groupCounts,
            'filters' => [
                'group' => $group,
                'search' => $search,
                'locale' => $locale
            ]
        ]);
    }

    /**
     * Update multiple settings at once
     */
    public function bulkUpdate(Request $request)
    {
        $request->validate([
            'updates' => 'required|array',
            'updates.*.id' => 'required|exists:settings,id',
            'updates.*.value_en' => 'nullable|string',
            'updates.*.value_pl' => 'nullable|string',
            'updates.*.value_nl' => 'nullable|string',
        ]);

        foreach ($request->updates as $update) {
            $setting = Setting::find($update['id']);
            $setting->update([
                'value_en' => $update['value_en'] ?? $setting->value_en,
                'value_pl' => $update['value_pl'] ?? $setting->value_pl,
                'value_nl' => $update['value_nl'] ?? $setting->value_nl,
            ]);
        }

        return back()->with('success', 'Settings updated successfully!');
    }

    /**
     * Export settings for a specific group
     */
    public function export(Request $request)
    {
        $group = $request->get('group');
        $settings = Setting::where('group', $group)->get();

        $filename = "settings_{$group}_" . date('Y-m-d') . '.json';

        return response()->json($settings)
            ->header('Content-Disposition', "attachment; filename={$filename}");
    }

    /**
     * Import settings from JSON file
     */
    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:json'
        ]);

        $content = file_get_contents($request->file('file')->getRealPath());
        $settings = json_decode($content, true);

        foreach ($settings as $setting) {
            Setting::updateOrCreate(
                ['key' => $setting['key']],
                [
                    'value' => $setting['value_en'] ?? $setting['value'],
                    'value_en' => $setting['value_en'] ?? $setting['value'],
                    'value_pl' => $setting['value_pl'] ?? '',
                    'value_nl' => $setting['value_nl'] ?? '',
                    'group' => $setting['group'] ?? 'general',
                    'type' => $setting['type'] ?? 'text',
                    'description' => $setting['description'] ?? '',
                ]
            );
        }

        return back()->with('success', 'Settings imported successfully!');
    }
}
