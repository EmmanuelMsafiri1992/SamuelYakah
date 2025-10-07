<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Setting;
use Illuminate\Support\Facades\DB;

class SiteSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            // Site Identity
            [
                'key' => 'site_name',
                'value_en' => 'Violetta Home Care Limited',
                'value_pl' => 'Violetta Home Care Limited',
                'type' => 'text',
                'group' => 'general',
            ],
            [
                'key' => 'site_tagline',
                'value_en' => 'Care with Compassion',
                'value_pl' => 'Opieka z Współczuciem',
                'type' => 'text',
                'group' => 'general',
            ],
            [
                'key' => 'site_logo',
                'value_en' => '/images/logo.png',
                'value_pl' => '/images/logo.png',
                'type' => 'image',
                'group' => 'general',
            ],
            [
                'key' => 'site_favicon',
                'value_en' => '/favicon.ico',
                'value_pl' => '/favicon.ico',
                'type' => 'image',
                'group' => 'general',
            ],

            // Contact Information
            [
                'key' => 'contact_phone',
                'value_en' => '+44 20 3239 1227',
                'value_pl' => '+44 20 3239 1227',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'contact_phone_display',
                'value_en' => 'Call our friendly team today on',
                'value_pl' => 'Zadzwoń do naszego przyjaznego zespołu',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'contact_email',
                'value_en' => 'info@violettahomecare.com',
                'value_pl' => 'info@violettahomecare.com',
                'type' => 'text',
                'group' => 'contact',
            ],
            [
                'key' => 'contact_address',
                'value_en' => 'London, United Kingdom',
                'value_pl' => 'Londyn, Wielka Brytania',
                'type' => 'textarea',
                'group' => 'contact',
            ],

            // Social Media
            [
                'key' => 'social_facebook',
                'value_en' => 'https://facebook.com/violettahomecare',
                'value_pl' => 'https://facebook.com/violettahomecare',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_twitter',
                'value_en' => 'https://twitter.com/violettahomecare',
                'value_pl' => 'https://twitter.com/violettahomecare',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_linkedin',
                'value_en' => 'https://linkedin.com/company/violettahomecare',
                'value_pl' => 'https://linkedin.com/company/violettahomecare',
                'type' => 'text',
                'group' => 'social',
            ],
            [
                'key' => 'social_instagram',
                'value_en' => 'https://instagram.com/violettahomecare',
                'value_pl' => 'https://instagram.com/violettahomecare',
                'type' => 'text',
                'group' => 'social',
            ],

            // Menu Items Labels
            [
                'key' => 'menu_home',
                'value_en' => 'Home',
                'value_pl' => 'Strona główna',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_live_in_care',
                'value_en' => 'Live-in Care',
                'value_pl' => 'Opieka domowa',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_care_funding',
                'value_en' => 'Care Funding',
                'value_pl' => 'Finansowanie opieki',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_resources',
                'value_en' => 'Resources',
                'value_pl' => 'Zasoby',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_careers',
                'value_en' => 'Careers',
                'value_pl' => 'Kariera',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_news',
                'value_en' => 'News',
                'value_pl' => 'Aktualności',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_contact',
                'value_en' => 'Contact',
                'value_pl' => 'Kontakt',
                'type' => 'text',
                'group' => 'menu',
            ],
            [
                'key' => 'menu_button_text',
                'value_en' => 'Menu',
                'value_pl' => 'Menu',
                'type' => 'text',
                'group' => 'menu',
            ],

            // Homepage Content
            [
                'key' => 'home_hero_title',
                'value_en' => 'Live-in care, your way.',
                'value_pl' => 'Opieka domowa, według Twoich potrzeb.',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_hero_subtitle',
                'value_en' => 'Violetta Home Care provides a trusted, nurse-led live-in care service',
                'value_pl' => 'Violetta Home Care zapewnia zaufaną, kierowaną przez pielęgniarki usługę opieki domowej',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_hero_description',
                'value_en' => 'Serving London and surrounding areas with compassionate, personalized care',
                'value_pl' => 'Obsługujemy Londyn i okolice z empatyczną, spersonalizowaną opieką',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_hero_cta',
                'value_en' => 'Find out more',
                'value_pl' => 'Dowiedz się więcej',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_why_choose_title',
                'value_en' => 'Why choose us?',
                'value_pl' => 'Dlaczego my?',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_why_choose_p1',
                'value_en' => 'At Violetta Home Care, we understand that choosing care is a deeply personal decision. That\'s why we focus on carefully matching our dedicated care professionals with each client\'s unique needs and personality.',
                'value_pl' => 'W Violetta Home Care rozumiemy, że wybór opieki to głęboko osobista decyzja. Dlatego skupiamy się na starannym dopasowywaniu naszych oddanych opiekunów do unikalnych potrzeb i osobowości każdego klienta.',
                'type' => 'textarea',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_why_choose_p2',
                'value_en' => 'Our nurse-led approach ensures the highest quality of care, while our commitment to personalized service means you or your loved one will receive attention that truly makes a difference.',
                'value_pl' => 'Nasze podejście kierowane przez pielęgniarki zapewnia najwyższą jakość opieki, podczas gdy nasze zaangażowanie w spersonalizowaną usługę oznacza, że Ty lub Twój bliski otrzyma uwagę, która naprawdę robi różnicę.',
                'type' => 'textarea',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_why_choose_cta',
                'value_en' => 'Learn about our services',
                'value_pl' => 'Poznaj nasze usługi',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_career_title',
                'value_en' => 'A care career like no other',
                'value_pl' => 'Kariera w opiece jak żadna inna',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_career_p1',
                'value_en' => 'Join our team of dedicated care professionals and embark on a rewarding career that truly makes a difference in people\'s lives.',
                'value_pl' => 'Dołącz do naszego zespołu oddanych opiekunów i rozpocznij satysfakcjonującą karierę, która naprawdę robi różnicę w życiu ludzi.',
                'type' => 'textarea',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_career_p2',
                'value_en' => 'We offer competitive pay, comprehensive training, and ongoing support. Whether you\'re experienced in care or looking to start a new career path, we provide everything you need to succeed.',
                'value_pl' => 'Oferujemy konkurencyjne wynagrodzenie, kompleksowe szkolenie i ciągłe wsparcie. Niezależnie od tego, czy masz doświadczenie w opiece, czy chcesz rozpocząć nową ścieżkę kariery, zapewniamy wszystko, czego potrzebujesz, aby odnieść sukces.',
                'type' => 'textarea',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_career_cta',
                'value_en' => 'Explore career opportunities',
                'value_pl' => 'Poznaj możliwości kariery',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_jobs_title',
                'value_en' => 'Current Opportunities',
                'value_pl' => 'Aktualne możliwości',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'home_jobs_subtitle',
                'value_en' => 'Join our team and make a difference in someone\'s life',
                'value_pl' => 'Dołącz do naszego zespołu i zmień czyjeś życie',
                'type' => 'text',
                'group' => 'homepage',
            ],
            [
                'key' => 'button_apply_now',
                'value_en' => 'Apply Now',
                'value_pl' => 'Aplikuj teraz',
                'type' => 'text',
                'group' => 'common',
            ],
            [
                'key' => 'button_learn_more',
                'value_en' => 'Learn More',
                'value_pl' => 'Dowiedz się więcej',
                'type' => 'text',
                'group' => 'common',
            ],
        ];

        foreach ($settings as $setting) {
            Setting::updateOrCreate(
                ['key' => $setting['key']],
                $setting
            );
        }

        echo "Site settings seeded successfully!\n";
    }
}
