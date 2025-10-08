<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class BrandingController extends Controller
{
    public function index(): Response
    {
        $brandingSettings = Setting::where('group', 'branding')->get();

        return Inertia::render('Admin/Branding/Index', [
            'settings' => $brandingSettings,
        ]);
    }

    public function update(Request $request): RedirectResponse
    {
        $request->validate([
            'site_logo' => 'nullable|image|mimes:png,jpg,jpeg,svg|max:2048',
            'site_favicon' => 'nullable|image|mimes:png,jpg,jpeg,ico|max:1024',
        ]);

        // Handle site logo upload
        if ($request->hasFile('site_logo')) {
            $logoPath = $request->file('site_logo')->store('branding', 'public');
            Setting::updateOrCreate(
                ['key' => 'site_logo'],
                [
                    'value_en' => '/storage/' . $logoPath,
                    'value_pl' => '/storage/' . $logoPath,
                    'value_nl' => '/storage/' . $logoPath,
                    'type' => 'image',
                    'group' => 'branding',
                ]
            );
        }

        // Handle favicon upload
        if ($request->hasFile('site_favicon')) {
            $faviconPath = $request->file('site_favicon')->store('branding', 'public');
            Setting::updateOrCreate(
                ['key' => 'site_favicon'],
                [
                    'value_en' => '/storage/' . $faviconPath,
                    'value_pl' => '/storage/' . $faviconPath,
                    'value_nl' => '/storage/' . $faviconPath,
                    'type' => 'image',
                    'group' => 'branding',
                ]
            );
        }

        Cache::forget('settings_all');

        return redirect()->route('admin.branding.index')->with('success', 'Branding updated successfully!');
    }
}
