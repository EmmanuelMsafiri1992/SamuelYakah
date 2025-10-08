<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ComprehensiveContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            // ===== HEADER SETTINGS =====
            [
                'key' => 'header_login_text',
                'value_en' => 'Login',
                'value_pl' => 'Zaloguj się',
                'value_nl' => 'Inloggen',
                'group' => 'header',
                'type' => 'text',
                'description' => 'Login button text in header'
            ],
            [
                'key' => 'contact_phone_display',
                'value_en' => 'Call our friendly team today on',
                'value_pl' => 'Zadzwoń do naszego zespołu już dziś pod numer',
                'value_nl' => 'Bel vandaag ons vriendelijk team op',
                'group' => 'header',
                'type' => 'text',
                'description' => 'Phone display text in header'
            ],
            [
                'key' => 'menu_button_text',
                'value_en' => 'Menu',
                'value_pl' => 'Menu',
                'value_nl' => 'Menu',
                'group' => 'header',
                'type' => 'text',
                'description' => 'Menu button text'
            ],

            // ===== LIVE-IN CARE PAGE =====
            [
                'key' => 'livein_hero_title',
                'value_en' => 'Trusted Nurse-led 24-Hour Live-In Care',
                'value_pl' => 'Zaufana, całodobowa opieka domowa prowadzona przez pielęgniarki',
                'value_nl' => 'Vertrouwde 24-uurs thuiszorg onder leiding van verpleegkundigen',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Live-in care hero title'
            ],
            [
                'key' => 'livein_hero_subtitle',
                'value_en' => 'Providing dedicated, compassionate care in the comfort of your own home',
                'value_pl' => 'Zapewniamy dedykowaną, współczującą opiekę w zaciszu własnego domu',
                'value_nl' => 'Het bieden van toegewijde, compassievolle zorg in het comfort van uw eigen huis',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Live-in care hero subtitle'
            ],
            [
                'key' => 'livein_cta_call',
                'value_en' => 'Call Us',
                'value_pl' => 'Zadzwoń do nas',
                'value_nl' => 'Bel ons',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Call us button text'
            ],
            [
                'key' => 'livein_what_is_title',
                'value_en' => 'What is Live-in Care?',
                'value_pl' => 'Czym jest opieka domowa z zamieszkaniem?',
                'value_nl' => 'Wat is inw onende zorg?',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'What is live-in care section title'
            ],
            [
                'key' => 'livein_what_is_p1',
                'value_en' => 'Live-in care involves a dedicated care professional residing with you in your home, providing 24/7 support and companionship. This comprehensive care approach helps reduce risks like falls and hospital admissions while maintaining your independence and comfort in familiar surroundings.',
                'value_pl' => 'Opieka domowa z zamieszkaniem polega na tym, że dedykowany opiekun mieszka z Państwem w domu, zapewniając wsparcie i towarzystwo 24/7. To kompleksowe podejście pomaga zmniejszyć ryzyko upadków i hospitalizacji, jednocześnie zachowując niezależność i komfort w znajomym otoczeniu.',
                'value_nl' => 'Inwonende zorg houdt in dat een toegewijde zorgprofessional bij u thuis woont en 24/7 ondersteuning en gezelschap biedt. Deze uitgebreide zorgaanpak helpt risico\'s zoals vallen en ziekenhuisopnames te verminderen, terwijl uw onafhankelijkheid en comfort in vertrouwde omgeving behouden blijft.',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'What is live-in care paragraph 1'
            ],
            [
                'key' => 'livein_what_is_p2',
                'value_en' => 'Our nurse-led service ensures the highest quality of care, tailored to your individual needs and preferences.',
                'value_pl' => 'Nasza usługa kierowana przez pielęgniarki zapewnia najwyższą jakość opieki, dostosowaną do indywidualnych potrzeb i preferencji.',
                'value_nl' => 'Onze door verpleegkundigen geleide service garandeert de hoogste kwaliteit van zorg, afgestemd op uw individuele behoeften en voorkeuren.',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'What is live-in care paragraph 2'
            ],
            [
                'key' => 'livein_who_we_care_title',
                'value_en' => 'Who We Care For',
                'value_pl' => 'Dla kogo się opiekujemy',
                'value_nl' => 'Voor wie wij zorgen',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Who we care for section title'
            ],
            [
                'key' => 'livein_who_we_care_intro',
                'value_en' => 'We provide specialized care for elderly individuals and younger people with advanced needs, including:',
                'value_pl' => 'Zapewniamy specjalistyczną opiekę dla osób starszych i młodszych z zaawansowanymi potrzebami, w tym:',
                'value_nl' => 'Wij bieden gespecialiseerde zorg voor ouderen en jongeren met geavanceerde behoeften, waaronder:',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Who we care for intro text'
            ],
            [
                'key' => 'livein_condition_spinal_injuries',
                'value_en' => 'Spinal Injuries',
                'value_pl' => 'Uszkodzenia kręgosłupa',
                'value_nl' => 'Ruggenmergletsel',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Spinal injuries condition'
            ],
            [
                'key' => 'livein_condition_multiple_sclerosis',
                'value_en' => 'Multiple Sclerosis',
                'value_pl' => 'Stwardnienie rozsiane',
                'value_nl' => 'Multiple sclerose',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Multiple sclerosis condition'
            ],
            [
                'key' => 'livein_condition_brain_injury',
                'value_en' => 'Brain Injury',
                'value_pl' => 'Uraz mózgu',
                'value_nl' => 'Hersenletsel',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Brain injury condition'
            ],
            [
                'key' => 'livein_condition_cerebral_palsy',
                'value_en' => 'Cerebral Palsy',
                'value_pl' => 'Porażenie mózgowe',
                'value_nl' => 'Cerebrale parese',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Cerebral palsy condition'
            ],
            [
                'key' => 'livein_condition_age_related',
                'value_en' => 'Age-related Frailty',
                'value_pl' => 'Słabość związana z wiekiem',
                'value_nl' => 'Leeftijdsgerelateerde kwetsbaarheid',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Age-related frailty condition'
            ],
            [
                'key' => 'livein_condition_dementia',
                'value_en' => 'Dementia Care',
                'value_pl' => 'Opieka nad osobami z demencją',
                'value_nl' => 'Dementiezorg',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Dementia care condition'
            ],
            [
                'key' => 'livein_tasks_title',
                'value_en' => 'Live-in Carer Tasks',
                'value_pl' => 'Zadania opiekuna mieszkającego z podopiecznym',
                'value_nl' => 'Taken van inwonende verzorger',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Live-in carer tasks title'
            ],
            [
                'key' => 'livein_tasks_intro',
                'value_en' => 'Our dedicated carers provide comprehensive support with:',
                'value_pl' => 'Nasi dedykowani opiekunowie zapewniają kompleksowe wsparcie w zakresie:',
                'value_nl' => 'Onze toegewijde verzorgers bieden uitgebreide ondersteuning met:',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Live-in carer tasks intro'
            ],
            [
                'key' => 'livein_task_personal_care',
                'value_en' => 'Personal Care',
                'value_pl' => 'Opieka osobista',
                'value_nl' => 'Persoonlijke verzorging',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Personal care task'
            ],
            [
                'key' => 'livein_task_medication',
                'value_en' => 'Medication Management',
                'value_pl' => 'Zarządzanie lekami',
                'value_nl' => 'Medicatiebeheer',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Medication management task'
            ],
            [
                'key' => 'livein_task_cleaning',
                'value_en' => 'Home Cleaning',
                'value_pl' => 'Sprzątanie domu',
                'value_nl' => 'Huisschoonmaak',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Home cleaning task'
            ],
            [
                'key' => 'livein_task_meals',
                'value_en' => 'Meal Preparation',
                'value_pl' => 'Przygotowywanie posiłków',
                'value_nl' => 'Maaltijdbereiding',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Meal preparation task'
            ],
            [
                'key' => 'livein_task_errands',
                'value_en' => 'Errands & Shopping',
                'value_pl' => 'Sprawy i zakupy',
                'value_nl' => 'Boodschappen en winkelen',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Errands and shopping task'
            ],
            [
                'key' => 'livein_task_trips',
                'value_en' => 'Trip Arrangements',
                'value_pl' => 'Organizacja wyjazdów',
                'value_nl' => 'Uitstapjes regelen',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Trip arrangements task'
            ],
            [
                'key' => 'livein_task_pets',
                'value_en' => 'Pet Care',
                'value_pl' => 'Opieka nad zwierzętami',
                'value_nl' => 'Huisdierenverzorging',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Pet care task'
            ],
            [
                'key' => 'livein_task_healthcare',
                'value_en' => 'Healthcare Tasks',
                'value_pl' => 'Zadania zdrowotne',
                'value_nl' => 'Gezondheidstaken',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Healthcare tasks'
            ],
            [
                'key' => 'livein_benefits_title',
                'value_en' => 'Benefits of Live-in Care',
                'value_pl' => 'Korzyści z opieki domowej z zamieszkaniem',
                'value_nl' => 'Voordelen van inwonende zorg',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Benefits of live-in care title'
            ],
            [
                'key' => 'livein_benefit_flexibility_title',
                'value_en' => 'Flexibility & Freedom',
                'value_pl' => 'Elastyczność i Wolność',
                'value_nl' => 'Flexibiliteit en vrijheid',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Flexibility benefit title'
            ],
            [
                'key' => 'livein_benefit_flexibility_desc',
                'value_en' => 'Maintain your independence and daily routines in the comfort of your own home',
                'value_pl' => 'Zachowaj niezależność i codzienne rutyny w komforcie własnego domu',
                'value_nl' => 'Behoud uw onafhankelijkheid en dagelijkse routines in het comfort van uw eigen huis',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Flexibility benefit description'
            ],
            [
                'key' => 'livein_benefit_familiar_title',
                'value_en' => 'Familiar Environment',
                'value_pl' => 'Znajome otoczenie',
                'value_nl' => 'Vertrouwde omgeving',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Familiar environment benefit title'
            ],
            [
                'key' => 'livein_benefit_familiar_desc',
                'value_en' => 'Stay in your cherished home surrounded by memories and belongings',
                'value_pl' => 'Zostań w ulubionym domu otoczonym wspomnieniami i rzeczami',
                'value_nl' => 'Blijf in uw gekoesterde huis omringd door herinneringen en bezittingen',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Familiar environment benefit description'
            ],
            [
                'key' => 'livein_benefit_personalized_title',
                'value_en' => 'Personalized Care',
                'value_pl' => 'Spersonalizowana opieka',
                'value_nl' => 'Gepersonaliseerde zorg',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Personalized care benefit title'
            ],
            [
                'key' => 'livein_benefit_personalized_desc',
                'value_en' => 'Receive one-on-one attention tailored to your unique needs and preferences',
                'value_pl' => 'Otrzymaj indywidualną uwagę dostosowaną do Twoich unikalnych potrzeb i preferencji',
                'value_nl' => 'Ontvang één-op-één aandacht afgestemd op uw unieke behoeften en voorkeuren',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Personalized care benefit description'
            ],
            [
                'key' => 'livein_benefit_consistent_title',
                'value_en' => 'Consistent Caregiver',
                'value_pl' => 'Stały opiekun',
                'value_nl' => 'Consistente verzorger',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Consistent caregiver benefit title'
            ],
            [
                'key' => 'livein_benefit_consistent_desc',
                'value_en' => 'Build meaningful relationships with your dedicated care professional',
                'value_pl' => 'Buduj znaczące relacje z dedykowanym specjalistą od opieki',
                'value_nl' => 'Bouw betekenisvolle relaties op met uw toegewijde zorgprofessional',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Consistent caregiver benefit description'
            ],
            [
                'key' => 'livein_benefit_health_title',
                'value_en' => 'Improved Health',
                'value_pl' => 'Lepsz e zdrowie',
                'value_nl' => 'Verbeterde gezondheid',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Improved health benefit title'
            ],
            [
                'key' => 'livein_benefit_health_desc',
                'value_en' => 'Better health outcomes through personalized, attentive care',
                'value_pl' => 'Lepsze wyniki zdrowotne dzięki spersonalizowanej, uważnej opiece',
                'value_nl' => 'Betere gezondheidsresultaten door gepersonaliseerde, oplettende zorg',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Improved health benefit description'
            ],
            [
                'key' => 'livein_benefit_pets_title',
                'value_en' => 'Pet Care Support',
                'value_pl' => 'Wsparcie w opiece nad zwierzętami',
                'value_nl' => 'Ondersteuning bij huisdierenverzorging',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Pet care support benefit title'
            ],
            [
                'key' => 'livein_benefit_pets_desc',
                'value_en' => 'Keep your beloved pets with you while receiving proper care',
                'value_pl' => 'Zachowaj swoje ukochane zwierzęta przy sobie, otrzymując odpowiednią opiekę',
                'value_nl' => 'Houd uw geliefde huisdieren bij u terwijl u goede zorg ontvangt',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Pet care support benefit description'
            ],
            [
                'key' => 'livein_pricing_title',
                'value_en' => 'Transparent Pricing',
                'value_pl' => 'Przejrzyste ceny',
                'value_nl' => 'Transparante prijzen',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Pricing section title'
            ],
            [
                'key' => 'livein_pricing_text',
                'value_en' => 'Fully managed live-in care starts from',
                'value_pl' => 'W pełni zarządzana opieka domowa z zamieszkaniem zaczyna się od',
                'value_nl' => 'Volledig beheerde inwonende zorg begint vanaf',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Pricing text'
            ],
            [
                'key' => 'livein_pricing_amount',
                'value_en' => '£1,350 per week',
                'value_pl' => '£1,350 tygodniowo',
                'value_nl' => '£1,350 per week',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Pricing amount'
            ],
            [
                'key' => 'livein_pricing_contact',
                'value_en' => 'Contact us for a free care assessment and personalized quote',
                'value_pl' => 'Skontaktuj się z nami w celu bezpłatnej oceny opieki i spersonalizowanej wyceny',
                'value_nl' => 'Neem contact met ons op voor een gratis zorgbeoordeling en persoonlijke offerte',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'Pricing contact text'
            ],
            [
                'key' => 'livein_cta_title',
                'value_en' => 'Ready to Learn More About Our Live-in Care Services?',
                'value_pl' => 'Gotowy, aby dowiedzieć się więcej o naszych usługach opieki domowej?',
                'value_nl' => 'Klaar om meer te weten over onze inw onende zorgdiensten?',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'CTA title'
            ],
            [
                'key' => 'livein_cta_subtitle',
                'value_en' => 'Contact us 24 hours a day for a free care assessment and quote',
                'value_pl' => 'Skontaktuj się z nami 24 godziny na dobę w celu bezpłatnej oceny opieki i wyceny',
                'value_nl' => 'Neem 24 uur per dag contact met ons op voor een gratis zorgbeoordeling en offerte',
                'group' => 'page_livein',
                'type' => 'textarea',
                'description' => 'CTA subtitle'
            ],
            [
                'key' => 'livein_cta_call_btn',
                'value_en' => 'Call',
                'value_pl' => 'Zadzwoń',
                'value_nl' => 'Bel',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Call button text'
            ],
            [
                'key' => 'livein_cta_contact_btn',
                'value_en' => 'Contact Us Online',
                'value_pl' => 'Skontaktuj się z nami online',
                'value_nl' => 'Neem online contact op',
                'group' => 'page_livein',
                'type' => 'text',
                'description' => 'Contact us online button text'
            ],

            // ===== CARE FUNDING PAGE =====
            [
                'key' => 'funding_hero_title',
                'value_en' => 'Care Funding Options',
                'value_pl' => 'Opcje finansowania opieki',
                'value_nl' => 'Zorgfinancieringsopties',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Care funding hero title'
            ],
            [
                'key' => 'funding_hero_subtitle',
                'value_en' => 'Understanding how to fund your care - we\'re here to help you navigate the options',
                'value_pl' => 'Zrozumienie, jak finansować opiekę - jesteśmy tutaj, aby pomóc w nawigacji po opcjach',
                'value_nl' => 'Begrijpen hoe u uw zorg kunt financieren - wij zijn er om u te helpen de opties te navigeren',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Care funding hero subtitle'
            ],
            [
                'key' => 'funding_intro_title',
                'value_en' => 'How to Fund Your Care',
                'value_pl' => 'Jak sfinansować opiekę',
                'value_nl' => 'Hoe uw zorg te financieren',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Funding intro title'
            ],
            [
                'key' => 'funding_intro_p1',
                'value_en' => 'Funding care can seem complex, but we\'re here to guide you through the various options available. Whether you\'re considering self-funding, local authority support, or NHS Continuing Healthcare, we\'ll help you understand what\'s available to you.',
                'value_pl' => 'Finansowanie opieki może wydawać się skomplikowane, ale jesteśmy tutaj, aby pomóc w poznaniu różnych dostępnych opcji. Niezależnie od tego, czy rozważasz własne finansowanie, wsparcie władz lokalnych czy NHS Continuing Healthcare, pomożemy zrozumieć, co jest dostępne.',
                'value_nl' => 'Het financieren van zorg kan complex lijken, maar wij zijn er om u door de verschillende beschikbare opties te leiden. Of u nu zelffinanciering, steun van lokale autoriteiten of NHS Continuing Healthcare overweegt, wij helpen u begrijpen wat er voor u beschikbaar is.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Funding intro paragraph 1'
            ],
            [
                'key' => 'funding_intro_p2',
                'value_en' => 'Our team can provide guidance on the most suitable funding routes based on your individual circumstances and care needs.',
                'value_pl' => 'Nasz zespół może udzielić wskazówek dotyczących najbardziej odpowiednich ścieżek finansowania w oparciu o indywidualne okoliczności i potrzeby w zakresie opieki.',
                'value_nl' => 'Ons team kan advies geven over de meest geschikte financieringsroutes op basis van uw individuele omstandigheden en zorgbehoeften.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Funding intro paragraph 2'
            ],
            [
                'key' => 'funding_options_title',
                'value_en' => 'Funding Options Available',
                'value_pl' => 'Dostępne opcje finansowania',
                'value_nl' => 'Beschikbare financieringsopties',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Funding options title'
            ],
            [
                'key' => 'funding_self_title',
                'value_en' => 'Self-Funding',
                'value_pl' => 'Własne finansowanie',
                'value_nl' => 'Zelffinanciering',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Self-funding option title'
            ],
            [
                'key' => 'funding_self_p1',
                'value_en' => 'Many people choose to pay for their own care privately. This gives you complete control over your care choices and the flexibility to arrange services that perfectly match your needs and preferences.',
                'value_pl' => 'Wiele osób decyduje się na prywatną płatność za opiekę. Daje to pełną kontrolę nad wyborami dotyczącymi opieki oraz elastyczność w organizowaniu usług idealnie dopasowanych do potrzeb i preferencji.',
                'value_nl' => 'Veel mensen kiezen ervoor om privé voor hun eigen zorg te betalen. Dit geeft u volledige controle over uw keuzes en de flexibiliteit om diensten te regelen die perfect aansluiten bij uw behoeften en voorkeuren.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Self-funding paragraph 1'
            ],
            [
                'key' => 'funding_self_p2',
                'value_en' => 'If you have assets over £23,250, you\'ll likely need to self-fund your care initially. We offer transparent pricing and can provide detailed cost breakdowns to help you plan.',
                'value_pl' => 'Jeśli masz aktywa o wartości powyżej 23 250 funtów, prawdopodobnie będziesz musiał początkowo sfinansować opiekę samodzielnie. Oferujemy przejrzyste ceny i możemy dostarczyć szczegółowe zestawienie kosztów, aby pomóc w planowaniu.',
                'value_nl' => 'Als u meer dan £23.250 aan bezittingen heeft, moet u waarschijnlijk aanvankelijk uw zorg zelf financieren. Wij bieden transparante prijzen en kunnen gedetailleerde kostenspecificaties verstrekken om u te helpen plannen.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Self-funding paragraph 2'
            ],
            [
                'key' => 'funding_local_title',
                'value_en' => 'Local Authority Support',
                'value_pl' => 'Wsparcie władz lokalnych',
                'value_nl' => 'Lokale overheidssteun',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Local authority support title'
            ],
            [
                'key' => 'funding_local_p1',
                'value_en' => 'If your assets are below £23,250, you may be eligible for financial support from your local council. The amount of support depends on your financial assessment and care needs.',
                'value_pl' => 'Jeśli Twoje aktywa są poniżej 23 250 funtów, możesz kwalifikować się do wsparcia finansowego ze strony lokalnej rady. Wysokość wsparcia zależy od oceny finansowej i potrzeb opieki.',
                'value_nl' => 'Als uw bezittingen minder dan £23.250 bedragen, komt u mogelijk in aanmerking voor financiële steun van uw lokale gemeente. De hoogte van de steun hangt af van uw financiële beoordeling en zorgbehoeften.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Local authority support paragraph 1'
            ],
            [
                'key' => 'funding_local_p2',
                'value_en' => 'We can guide you through the assessment process and work with your local authority to arrange suitable care packages.',
                'value_pl' => 'Możemy pomóc w procesie oceny i współpracować z władzami lokalnymi w celu zorganizowania odpowiednich pakietów opieki.',
                'value_nl' => 'Wij kunnen u door het beoordelingsproces leiden en samenwerken met uw lokale overheid om geschikte zorgpakketten te regelen.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Local authority support paragraph 2'
            ],
            [
                'key' => 'funding_nhs_title',
                'value_en' => 'NHS Continuing Healthcare',
                'value_pl' => 'NHS Continuing Healthcare',
                'value_nl' => 'NHS Continue Gezondheidszorg',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'NHS Continuing Healthcare title'
            ],
            [
                'key' => 'funding_nhs_p1',
                'value_en' => 'If you have complex medical needs, you may qualify for NHS Continuing Healthcare (CHC). This is a package of care arranged and funded solely by the NHS for individuals who have ongoing healthcare needs.',
                'value_pl' => 'Jeśli masz złożone potrzeby medyczne, możesz kwalifikować się do NHS Continuing Healthcare (CHC). Jest to pakiet opieki organizowany i finansowany wyłącznie przez NHS dla osób z bieżącymi potrzebami zdrowotnymi.',
                'value_nl' => 'Als u complexe medische behoeften heeft, komt u mogelijk in aanmerking voor NHS Continuing Healthcare (CHC). Dit is een zorgpakket dat uitsluitend door de NHS wordt geregeld en gefinancierd voor personen met doorlopende gezondheidsbehoeften.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'NHS Continuing Healthcare paragraph 1'
            ],
            [
                'key' => 'funding_nhs_p2',
                'value_en' => 'We can support you through the CHC assessment process and provide the necessary documentation to support your application.',
                'value_pl' => 'Możemy wspierać Cię w procesie oceny CHC i dostarczyć niezbędną dokumentację wspierającą Twoje podanie.',
                'value_nl' => 'Wij kunnen u ondersteunen tijdens het CHC-beoordelingsproces en de nodige documentatie verstrekken ter ondersteuning van uw aanvraag.',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'NHS Continuing Healthcare paragraph 2'
            ],
            [
                'key' => 'funding_other_title',
                'value_en' => 'Other Funding Sources',
                'value_pl' => 'Inne źródła finansowania',
                'value_nl' => 'Andere financieringsbronnen',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Other funding sources title'
            ],
            [
                'key' => 'funding_other_intro',
                'value_en' => 'Additional funding options may include:',
                'value_pl' => 'Dodatkowe opcje finansowania mogą obejmować:',
                'value_nl' => 'Aanvullende financieringsopties kunnen omvatten:',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Other funding sources intro'
            ],
            [
                'key' => 'funding_other_deferred',
                'value_en' => 'Deferred payment agreements',
                'value_pl' => 'Umowy o odroczonej płatności',
                'value_nl' => 'Overeenkomsten voor uitgestelde betaling',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Deferred payment agreements'
            ],
            [
                'key' => 'funding_other_veterans',
                'value_en' => 'Veterans\' benefits and support',
                'value_pl' => 'Świadczenia i wsparcie dla weteranów',
                'value_nl' => 'Veteranenvoordelen en ondersteuning',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Veterans benefits'
            ],
            [
                'key' => 'funding_other_allowance',
                'value_en' => 'Attendance Allowance or Personal Independence Payment',
                'value_pl' => 'Zasiłek opiekuńczy lub Płatność za Niezależność Osobistą',
                'value_nl' => 'Aanwezigheidsuitkering of Persoonlijke Onafhankelijkheidsbetaling',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Attendance allowance'
            ],
            [
                'key' => 'funding_other_charity',
                'value_en' => 'Charity grants and support funds',
                'value_pl' => 'Dotacje charytatywne i fundusze wsparcia',
                'value_nl' => 'Liefdadigheidsgiften en ondersteuningsmiddelen',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Charity grants'
            ],
            [
                'key' => 'funding_help_title',
                'value_en' => 'How We Can Help',
                'value_pl' => 'Jak możemy pomóc',
                'value_nl' => 'Hoe wij kunnen helpen',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'How we can help title'
            ],
            [
                'key' => 'funding_help_intro',
                'value_en' => 'Our experienced team understands that navigating care funding can be overwhelming. We\'re here to support you every step of the way:',
                'value_pl' => 'Nasz doświadczony zespół rozumie, że poruszanie się po finansowaniu opieki może być przytłaczające. Jesteśmy tutaj, aby wspierać Cię na każdym kroku:',
                'value_nl' => 'Ons ervaren team begrijpt dat het navigeren door zorgfinanciering overweldigend kan zijn. Wij zijn er om u bij elke stap te ondersteunen:',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'How we can help intro'
            ],
            [
                'key' => 'funding_help_1',
                'value_en' => 'Provide clear, transparent pricing information',
                'value_pl' => 'Zapewniamy jasne, przejrzyste informacje cenowe',
                'value_nl' => 'Verstrek duidelijke, transparante prijsinformatie',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Help point 1'
            ],
            [
                'key' => 'funding_help_2',
                'value_en' => 'Guide you through financial assessments',
                'value_pl' => 'Prowadzimy Cię przez oceny finansowe',
                'value_nl' => 'Begeleid u door financiële beoordelingen',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Help point 2'
            ],
            [
                'key' => 'funding_help_3',
                'value_en' => 'Help with NHS Continuing Healthcare applications',
                'value_pl' => 'Pomoc w aplikacjach NHS Continuing Healthcare',
                'value_nl' => 'Help bij NHS Continue Gezondheidszorg aanvragen',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Help point 3'
            ],
            [
                'key' => 'funding_help_4',
                'value_en' => 'Work with local authorities on your behalf',
                'value_pl' => 'Współpraca z władzami lokalnymi w Twoim imieniu',
                'value_nl' => 'Werk met lokale autoriteiten namens u',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Help point 4'
            ],
            [
                'key' => 'funding_help_5',
                'value_en' => 'Identify additional funding sources and benefits you may be entitled to',
                'value_pl' => 'Identyfikujemy dodatkowe źródła finansowania i świadczenia, do których możesz być uprawniony',
                'value_nl' => 'Identificeer aanvullende financieringsbronnen en voordelen waar u recht op heeft',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Help point 5'
            ],
            [
                'key' => 'funding_cta_title',
                'value_en' => 'Need Help Understanding Your Funding Options?',
                'value_pl' => 'Potrzebujesz pomocy w zrozumieniu opcji finansowania?',
                'value_nl' => 'Hulp nodig bij het begrijpen van uw financieringsopties?',
                'group' => 'page_funding',
                'type' => 'text',
                'description' => 'Funding CTA title'
            ],
            [
                'key' => 'funding_cta_subtitle',
                'value_en' => 'Contact us for a free consultation to discuss your care funding options',
                'value_pl' => 'Skontaktuj się z nami w celu bezpłatnej konsultacji dotyczącej opcji finansowania opieki',
                'value_nl' => 'Neem contact met ons op voor een gratis consult om uw zorgfinancieringsopties te bespreken',
                'group' => 'page_funding',
                'type' => 'textarea',
                'description' => 'Funding CTA subtitle'
            ],

            // ===== COMMON BUTTONS =====
            [
                'key' => 'button_apply_now',
                'value_en' => 'Apply Now',
                'value_pl' => 'Aplikuj teraz',
                'value_nl' => 'Nu solliciteren',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Apply now button'
            ],
            [
                'key' => 'button_read_more',
                'value_en' => 'Read More',
                'value_pl' => 'Czytaj więcej',
                'value_nl' => 'Lees meer',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Read more button'
            ],
            [
                'key' => 'button_learn_more',
                'value_en' => 'Learn More',
                'value_pl' => 'Dowiedz się więcej',
                'value_nl' => 'Meer informatie',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Learn more button'
            ],
            [
                'key' => 'button_contact_us',
                'value_en' => 'Contact Us',
                'value_pl' => 'Skontaktuj się z nami',
                'value_nl' => 'Neem contact op',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Contact us button'
            ],
            [
                'key' => 'button_submit',
                'value_en' => 'Submit',
                'value_pl' => 'Wyślij',
                'value_nl' => 'Indienen',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Submit button'
            ],
            [
                'key' => 'button_cancel',
                'value_en' => 'Cancel',
                'value_pl' => 'Anuluj',
                'value_nl' => 'Annuleren',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Cancel button'
            ],
            [
                'key' => 'button_send_message',
                'value_en' => 'Send Message',
                'value_pl' => 'Wyślij wiadomość',
                'value_nl' => 'Bericht verzenden',
                'group' => 'buttons',
                'type' => 'text',
                'description' => 'Send message button'
            ],
        ];

        foreach ($settings as $setting) {
            DB::table('settings')->updateOrInsert(
                ['key' => $setting['key']],
                [
                    'value' => $setting['value_en'],
                    'value_en' => $setting['value_en'],
                    'value_pl' => $setting['value_pl'],
                    'value_nl' => $setting['value_nl'],
                    'group' => $setting['group'],
                    'type' => $setting['type'],
                    'description' => $setting['description'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );
        }
    }
}
