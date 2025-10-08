<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SiteLogoSeeder extends Seeder
{
    public function run(): void
    {
        $settings = [
            [
                'key' => 'site_logo',
                'value_en' => '/images/logo.png',
                'value_pl' => '/images/logo.png',
                'value_nl' => '/images/logo.png',
                'type' => 'image',
                'group' => 'branding',
            ],
            [
                'key' => 'site_favicon',
                'value_en' => '/images/favicon.ico',
                'value_pl' => '/images/favicon.ico',
                'value_nl' => '/images/favicon.ico',
                'type' => 'image',
                'group' => 'branding',
            ],
        ];

        foreach ($settings as $setting) {
            DB::table('settings')->updateOrInsert(
                ['key' => $setting['key']],
                $setting
            );
        }

        $this->command->info('Site logo settings seeded successfully!');
    }
}
