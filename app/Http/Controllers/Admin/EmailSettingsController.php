<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Http\RedirectResponse;

class EmailSettingsController extends Controller
{
    public function index(): Response
    {
        $emailSettings = Setting::where('group', 'email')->get()->keyBy('key');

        return Inertia::render('Admin/EmailSettings/Index', [
            'emailSettings' => $emailSettings,
            'envAdminEmail' => env('ADMIN_EMAIL', 'admin@sunrisesunset.com'),
        ]);
    }

    public function update(Request $request): RedirectResponse
    {
        $request->validate([
            'admin_email' => 'required|email',
            'contact_email' => 'nullable|email',
            'support_email' => 'nullable|email',
            'notification_enabled' => 'boolean',
        ]);

        // Update or create email settings
        Setting::updateOrCreate(
            ['key' => 'admin_email'],
            [
                'value_en' => $request->admin_email,
                'value_pl' => $request->admin_email,
                'value_nl' => $request->admin_email,
                'type' => 'email',
                'group' => 'email',
            ]
        );

        if ($request->has('contact_email')) {
            Setting::updateOrCreate(
                ['key' => 'contact_email'],
                [
                    'value_en' => $request->contact_email,
                    'value_pl' => $request->contact_email,
                    'value_nl' => $request->contact_email,
                    'type' => 'email',
                    'group' => 'email',
                ]
            );
        }

        if ($request->has('support_email')) {
            Setting::updateOrCreate(
                ['key' => 'support_email'],
                [
                    'value_en' => $request->support_email,
                    'value_pl' => $request->support_email,
                    'value_nl' => $request->support_email,
                    'type' => 'email',
                    'group' => 'email',
                ]
            );
        }

        Setting::updateOrCreate(
            ['key' => 'notification_enabled'],
            [
                'value_en' => $request->boolean('notification_enabled') ? '1' : '0',
                'value_pl' => $request->boolean('notification_enabled') ? '1' : '0',
                'value_nl' => $request->boolean('notification_enabled') ? '1' : '0',
                'type' => 'text',
                'group' => 'email',
            ]
        );

        Cache::forget('settings_all');

        return redirect()->route('admin.email-settings.index')->with('success', 'Email settings updated successfully!');
    }
}
