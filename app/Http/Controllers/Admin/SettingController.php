<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): Response
    {
        $settings = Setting::all()->groupBy('group');

        return Inertia::render('Admin/Settings/Index', [
            'settings' => $settings,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        return Inertia::render('Admin/Settings/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'key' => 'required|string|max:255|unique:settings,key',
            'value_en' => 'required|string',
            'value_pl' => 'required|string',
            'type' => 'required|string|in:text,textarea,email,url,number',
            'group' => 'required|string|max:100',
        ]);

        Setting::create($validated);

        return redirect()->route('admin.settings.index')->with('success', 'Setting created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Setting $setting): Response
    {
        return Inertia::render('Admin/Settings/Show', [
            'setting' => $setting,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Setting $setting): Response
    {
        return Inertia::render('Admin/Settings/Edit', [
            'setting' => $setting,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Setting $setting): RedirectResponse
    {
        $validated = $request->validate([
            'key' => 'required|string|max:255|unique:settings,key,' . $setting->id,
            'value_en' => 'required|string',
            'value_pl' => 'required|string',
            'type' => 'required|string|in:text,textarea,email,url,number',
            'group' => 'required|string|max:100',
        ]);

        $setting->update($validated);

        return redirect()->route('admin.settings.index')->with('success', 'Setting updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Setting $setting): RedirectResponse
    {
        $setting->delete();

        return redirect()->route('admin.settings.index')->with('success', 'Setting deleted successfully!');
    }
}
