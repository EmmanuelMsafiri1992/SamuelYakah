<?php

namespace App\Traits;

use App\Models\Setting;

trait LoadsSettings
{
    /**
     * Get all settings indexed by key
     *
     * @return \Illuminate\Support\Collection
     */
    protected function getSettings()
    {
        return Setting::all()->keyBy('key');
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
