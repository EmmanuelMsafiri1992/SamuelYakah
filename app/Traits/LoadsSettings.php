<?php

namespace App\Traits;

use App\Models\Setting;
use Illuminate\Support\Facades\Cache;

trait LoadsSettings
{
    /**
     * Get all settings indexed by key (with caching)
     *
     * @return \Illuminate\Support\Collection
     */
    protected function getSettings()
    {
        return Cache::remember('settings_all', 3600, function () {
            return Setting::all()->keyBy('key');
        });
    }

    /**
     * Get current locale
     *
     * @return string
     */
    protected function getCurrentLocale()
    {
        return app()->getLocale();
    }
}
