<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Setting;

class FooterSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            // About Us Section
            [
                'key' => 'footer_about_heading',
                'value_en' => 'About Us',
                'value_pl' => 'O nas',
                'value_nl' => 'Over ons',
                'type' => 'text',
                'group' => 'footer_about'
            ],
            [
                'key' => 'footer_about_description',
                'value_en' => 'Sunrise & Sunset Home Care is dedicated to connecting compassionate caregivers with families who need quality live-in care. We\'re committed to building rewarding careers while providing exceptional care services.',
                'value_pl' => 'Sunrise & Sunset Home Care jest dedykowany łączeniu współczujących opiekunów z rodzinami, które potrzebują wysokiej jakości opieki w domu. Jesteśmy zaangażowani w budowanie satysfakcjonujących karier, zapewniając wyjątkowe usługi opiekuńcze.',
                'value_nl' => 'Sunrise & Sunset Home Care is toegewijd aan het verbinden van meelevende verzorgers met gezinnen die hoogwaardige thuiszorg nodig hebben. Wij zijn toegewijd aan het opbouwen van lonende carrières terwijl we uitzonderlijke zorgdiensten bieden.',
                'type' => 'textarea',
                'group' => 'footer_about'
            ],
            [
                'key' => 'footer_cqc_badge',
                'value_en' => 'CQC Registered',
                'value_pl' => 'Zarejestrowany przez CQC',
                'value_nl' => 'CQC geregistreerd',
                'type' => 'text',
                'group' => 'footer_about'
            ],

            // Quick Links Section
            [
                'key' => 'footer_links_heading',
                'value_en' => 'Quick Links',
                'value_pl' => 'Szybkie linki',
                'value_nl' => 'Snelle links',
                'type' => 'text',
                'group' => 'footer_links'
            ],
            [
                'key' => 'footer_link_browse_jobs',
                'value_en' => 'Browse Jobs',
                'value_pl' => 'Przeglądaj oferty pracy',
                'value_nl' => 'Bekijk vacatures',
                'type' => 'text',
                'group' => 'footer_links'
            ],
            [
                'key' => 'footer_link_apply_now',
                'value_en' => 'Apply Now',
                'value_pl' => 'Aplikuj teraz',
                'value_nl' => 'Nu solliciteren',
                'type' => 'text',
                'group' => 'footer_links'
            ],
            [
                'key' => 'footer_link_training',
                'value_en' => 'Training',
                'value_pl' => 'Szkolenie',
                'value_nl' => 'Opleiding',
                'type' => 'text',
                'group' => 'footer_links'
            ],
            [
                'key' => 'footer_link_faqs',
                'value_en' => 'FAQs',
                'value_pl' => 'FAQ',
                'value_nl' => 'Veelgestelde vragen',
                'type' => 'text',
                'group' => 'footer_links'
            ],
            [
                'key' => 'footer_link_contact',
                'value_en' => 'Contact',
                'value_pl' => 'Kontakt',
                'value_nl' => 'Contact',
                'type' => 'text',
                'group' => 'footer_links'
            ],

            // Contact Info Section
            [
                'key' => 'footer_contact_heading',
                'value_en' => 'Contact Info',
                'value_pl' => 'Informacje kontaktowe',
                'value_nl' => 'Contactinformatie',
                'type' => 'text',
                'group' => 'footer_contact'
            ],
            [
                'key' => 'footer_contact_address',
                'value_en' => '123 Care Street, London, UK, SW1A 1AA',
                'value_pl' => '123 Care Street, Londyn, Wielka Brytania, SW1A 1AA',
                'value_nl' => '123 Care Street, Londen, VK, SW1A 1AA',
                'type' => 'text',
                'group' => 'footer_contact'
            ],
            [
                'key' => 'footer_contact_phone',
                'value_en' => '+44 20 3239 1227',
                'value_pl' => '+44 20 3239 1227',
                'value_nl' => '+44 20 3239 1227',
                'type' => 'text',
                'group' => 'footer_contact'
            ],
            [
                'key' => 'footer_contact_email',
                'value_en' => 'info@helpinghandscare.co.uk',
                'value_pl' => 'info@helpinghandscare.co.uk',
                'value_nl' => 'info@helpinghandscare.co.uk',
                'type' => 'text',
                'group' => 'footer_contact'
            ],
            [
                'key' => 'footer_contact_whatsapp_label',
                'value_en' => 'WhatsApp',
                'value_pl' => 'WhatsApp',
                'value_nl' => 'WhatsApp',
                'type' => 'text',
                'group' => 'footer_contact'
            ],
            [
                'key' => 'footer_contact_whatsapp',
                'value_en' => '+44 20 3239 1227',
                'value_pl' => '+44 20 3239 1227',
                'value_nl' => '+44 20 3239 1227',
                'type' => 'text',
                'group' => 'footer_contact'
            ],

            // Follow Us Section
            [
                'key' => 'footer_social_heading',
                'value_en' => 'Follow Us',
                'value_pl' => 'Śledź nas',
                'value_nl' => 'Volg ons',
                'type' => 'text',
                'group' => 'footer_social'
            ],
            [
                'key' => 'footer_social_description',
                'value_en' => 'Connect with us on social media for updates and opportunities',
                'value_pl' => 'Połącz się z nami w mediach społecznościowych, aby otrzymywać aktualizacje i możliwości',
                'value_nl' => 'Volg ons op sociale media voor updates en kansen',
                'type' => 'text',
                'group' => 'footer_social'
            ],

            // Social Media Links (URLs)
            [
                'key' => 'footer_social_facebook',
                'value_en' => 'https://facebook.com',
                'value_pl' => 'https://facebook.com',
                'value_nl' => 'https://facebook.com',
                'type' => 'text',
                'group' => 'footer_social'
            ],
            [
                'key' => 'footer_social_twitter',
                'value_en' => 'https://twitter.com',
                'value_pl' => 'https://twitter.com',
                'value_nl' => 'https://twitter.com',
                'type' => 'text',
                'group' => 'footer_social'
            ],
            [
                'key' => 'footer_social_linkedin',
                'value_en' => 'https://linkedin.com',
                'value_pl' => 'https://linkedin.com',
                'value_nl' => 'https://linkedin.com',
                'type' => 'text',
                'group' => 'footer_social'
            ],
            [
                'key' => 'footer_social_instagram',
                'value_en' => 'https://instagram.com',
                'value_pl' => 'https://instagram.com',
                'value_nl' => 'https://instagram.com',
                'type' => 'text',
                'group' => 'footer_social'
            ],

            // Legal Links Section
            [
                'key' => 'footer_copyright',
                'value_en' => 'Sunrise & Sunset Home Care. All rights reserved.',
                'value_pl' => 'Sunrise & Sunset Home Care. Wszelkie prawa zastrzeżone.',
                'value_nl' => 'Sunrise & Sunset Home Care. Alle rechten voorbehouden.',
                'type' => 'text',
                'group' => 'footer_legal'
            ],
            [
                'key' => 'footer_legal_terms',
                'value_en' => 'Terms & Conditions',
                'value_pl' => 'Regulamin',
                'value_nl' => 'Algemene voorwaarden',
                'type' => 'text',
                'group' => 'footer_legal'
            ],
            [
                'key' => 'footer_legal_privacy',
                'value_en' => 'Privacy Policy',
                'value_pl' => 'Polityka prywatności',
                'value_nl' => 'Privacybeleid',
                'type' => 'text',
                'group' => 'footer_legal'
            ],
            [
                'key' => 'footer_legal_cookies',
                'value_en' => 'Cookie Policy',
                'value_pl' => 'Polityka cookies',
                'value_nl' => 'Cookiebeleid',
                'type' => 'text',
                'group' => 'footer_legal'
            ],
        ];

        foreach ($settings as $setting) {
            Setting::updateOrCreate(
                ['key' => $setting['key']],
                $setting
            );
        }
    }
}
