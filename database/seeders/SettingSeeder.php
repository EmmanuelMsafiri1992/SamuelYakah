<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            [
                'key' => 'site_name',
                'value_en' => 'Sunrise & Sunset Home Care',
                'value_pl' => 'Sunrise & Sunset Home Care',
                'type' => 'text',
                'group' => 'general',
            ],
            [
                'key' => 'site_tagline',
                'value_en' => 'Compassionate Care, Rewarding Careers',
                'value_pl' => 'Opieka z Sercem, Satysfakcjonująca Kariera',
                'type' => 'text',
                'group' => 'general',
            ],
            [
                'key' => 'contact_phone',
                'value_en' => '+44 20 3239 1227',
                'value_pl' => '+44 20 3239 1227',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'contact_email',
                'value_en' => 'recruitment@helpinghands.co.uk',
                'value_pl' => 'recruitment@helpinghands.co.uk',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'company_address',
                'value_en' => 'Sunrise & Sunset Home Care Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, United Kingdom',
                'value_pl' => 'Sunrise & Sunset Home Care Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, Wielka Brytania',
                'type' => 'textarea',
                'group' => 'contact',
            ],
            [
                'key' => 'footer_text',
                'value_en' => 'Sunrise & Sunset Home Care is a leading provider of live-in care services across the UK. We are dedicated to supporting our carers with comprehensive CQC-registered training, competitive pay packages, and continuous professional development opportunities. Join our community of compassionate care professionals and build a truly rewarding career while making a meaningful difference in people\'s lives every single day.',
                'value_pl' => 'Sunrise & Sunset Home Care jest wiodącym dostawcą usług opieki domowej w całej Wielkiej Brytanii. Jesteśmy zaangażowani we wspieranie naszych opiekunów kompleksowymi szkoleniami zarejestrowanymi przez CQC, konkurencyjnymi pakietami wynagrodzeń i ciągłymi możliwościami rozwoju zawodowego. Dołącz do naszej społeczności współczujących profesjonalistów opieki i zbuduj prawdziwie satysfakcjonującą karierę, wprowadzając znaczącą zmianę w życiu ludzi każdego dnia.',
                'type' => 'textarea',
                'group' => 'general',
            ],
            [
                'key' => 'office_hours',
                'value_en' => 'Monday - Friday: 8:00 AM - 6:00 PM\nSaturday: 9:00 AM - 5:00 PM\nSunday: 10:00 AM - 4:00 PM\n24/7 Emergency Support Available for All Carers',
                'value_pl' => 'Poniedziałek - Piątek: 8:00 - 18:00\nSobota: 9:00 - 17:00\nNiedziela: 10:00 - 16:00\nDostępne całodobowe wsparcie awaryjne dla wszystkich opiekunów',
                'type' => 'textarea',
                'group' => 'contact',
            ],
            [
                'key' => 'social_facebook',
                'value_en' => 'https://facebook.com/helpinghandshomecare',
                'value_pl' => 'https://facebook.com/helpinghandshomecare',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_linkedin',
                'value_en' => 'https://linkedin.com/company/helping-hands-home-care',
                'value_pl' => 'https://linkedin.com/company/helping-hands-home-care',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_instagram',
                'value_en' => 'https://instagram.com/helpinghandshomecare',
                'value_pl' => 'https://instagram.com/helpinghandshomecare',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_twitter',
                'value_en' => 'https://twitter.com/helpinghands_uk',
                'value_pl' => 'https://twitter.com/helpinghands_uk',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'meta_description',
                'value_en' => 'Join Sunrise & Sunset Home Care as a live-in carer and build a rewarding career. Earn £800-£1,200 per week with free accommodation, meals, comprehensive CQC training, healthcare benefits, and flexible working patterns. Apply now and make a real difference.',
                'value_pl' => 'Dołącz do Sunrise & Sunset Home Care jako opiekun domowy i zbuduj satysfakcjonującą karierę. Zarabiaj £800-£1,200 tygodniowo z bezpłatnym zakwaterowaniem, wyżywieniem, kompleksowym szkoleniem CQC, świadczeniami zdrowotnymi i elastycznymi warunkami pracy. Aplikuj teraz i wprowadź prawdziwą zmianę.',
                'type' => 'textarea',
                'group' => 'seo',
            ],
            [
                'key' => 'meta_keywords',
                'value_en' => 'live-in care jobs, carer jobs UK, care work, live-in carer, elderly care, home care jobs, care assistant jobs, CQC registered training, care career',
                'value_pl' => 'praca w opiece domowej, praca opiekuna Wielka Brytania, praca w opiece, opiekun domowy, opieka nad osobami starszymi, praca w opiece domowej, szkolenie zarejestrowane CQC, kariera w opiece',
                'type' => 'text',
                'group' => 'seo',
            ],
            [
                'key' => 'application_email',
                'value_en' => 'careers@helpinghands.co.uk',
                'value_pl' => 'careers@helpinghands.co.uk',
                'type' => 'text',
                'group' => 'applications',
            ],
            [
                'key' => 'whatsapp_number',
                'value_en' => '+44 7700 900456',
                'value_pl' => '+44 7700 900456',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'company_registration',
                'value_en' => 'Registered in England and Wales. Company No: 2538623. Care Quality Commission (CQC) Registered Provider. Regulated by the Care Quality Commission.',
                'value_pl' => 'Zarejestrowany w Anglii i Walii. Numer firmy: 2538623. Zarejestrowany dostawca Care Quality Commission (CQC). Regulowany przez Care Quality Commission.',
                'type' => 'text',
                'group' => 'legal',
            ],
            [
                'key' => 'vat_number',
                'value_en' => 'VAT Registration No: GB 365 8859 33',
                'value_pl' => 'Numer VAT: GB 365 8859 33',
                'type' => 'text',
                'group' => 'legal',
            ],
        ];

        foreach ($settings as $setting) {
            DB::table('settings')->insert([
                'key' => $setting['key'],
                'value_en' => $setting['value_en'],
                'value_pl' => $setting['value_pl'],
                'type' => $setting['type'],
                'group' => $setting['group'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
