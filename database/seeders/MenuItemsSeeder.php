<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenuItemsSeeder extends Seeder
{
    public function run(): void
    {
        $settings = [
            [
                'key' => 'menu_home',
                'value_en' => 'Home',
                'value_pl' => 'Strona główna',
                'value_nl' => 'Home',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_live_in_care',
                'value_en' => 'Live-in Care',
                'value_pl' => 'Opieka domowa',
                'value_nl' => 'Thuiszorg',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_care_funding',
                'value_en' => 'Care Funding',
                'value_pl' => 'Finansowanie opieki',
                'value_nl' => 'Zorgfinanciering',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_resources',
                'value_en' => 'Resources',
                'value_pl' => 'Zasoby',
                'value_nl' => 'Bronnen',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_careers',
                'value_en' => 'Careers',
                'value_pl' => 'Kariera',
                'value_nl' => 'Carrières',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_news',
                'value_en' => 'News',
                'value_pl' => 'Aktualności',
                'value_nl' => 'Nieuws',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_contact',
                'value_en' => 'Contact',
                'value_pl' => 'Kontakt',
                'value_nl' => 'Contact',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_button_text',
                'value_en' => 'Menu',
                'value_pl' => 'Menu',
                'value_nl' => 'Menu',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'header_login_text',
                'value_en' => 'Login',
                'value_pl' => 'Zaloguj się',
                'value_nl' => 'Inloggen',
                'type' => 'text',
                'group' => 'header',
            ],
        ];

        foreach ($settings as $setting) {
            DB::table('settings')->updateOrInsert(
                ['key' => $setting['key']],
                $setting
            );
        }

        $this->command->info('Menu items seeded successfully!');
        $this->command->info('Total settings created: ' . count($settings));
    }
}
