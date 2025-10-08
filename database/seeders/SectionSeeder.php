<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SectionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sections = [
            [
                'key' => 'hero',
                'type' => 'hero',
                'order' => 1,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Join Sunrise & Sunset Home Care - Start Your Rewarding Career in Live-In Care',
                        'subtitle' => 'Make a real difference in people\'s lives while building a fulfilling career with excellent benefits',
                        'content' => 'Welcome to Sunrise & Sunset Home Care, where compassionate care meets rewarding careers. Join our community of dedicated care professionals across the UK and provide personalized, one-on-one care that truly matters. We offer comprehensive CQC-registered training, competitive pay (£800-£1,200/week), free accommodation and meals, healthcare benefits, and flexible working patterns designed around your life. Whether you\'re an experienced carer or new to the profession, we\'ll support you every step of the way.',
                    ],
                    'pl' => [
                        'title' => 'Dołącz do Sunrise & Sunset Home Care - Rozpocznij Satysfakcjonującą Karierę w Opiece Domowej',
                        'subtitle' => 'Wprowadź prawdziwą zmianę w życiu ludzi, budując satysfakcjonującą karierę z doskonałymi benefitami',
                        'content' => 'Witamy w Sunrise & Sunset Home Care, gdzie współczująca opieka spotyka się z satysfakcjonującymi karierami. Dołącz do naszej społeczności oddanych profesjonalistów opieki w całej Wielkiej Brytanii i zapewnij spersonalizowaną opiekę jeden na jeden, która naprawdę ma znaczenie. Oferujemy kompleksowe szkolenia zarejestrowane przez CQC, konkurencyjne wynagrodzenie (£800-£1,200/tydzień), bezpłatne zakwaterowanie i wyżywienie, świadczenia zdrowotne oraz elastyczne warunki pracy zaprojektowane wokół Twojego życia. Bez względu na to, czy jesteś doświadczonym opiekunem, czy nowym w zawodzie, będziemy Cię wspierać na każdym kroku.',
                    ],
                ],
            ],
            [
                'key' => 'job_search',
                'type' => 'job_search',
                'order' => 2,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Find Your Perfect Live-In Care Position',
                        'subtitle' => 'Browse available opportunities across the UK',
                        'content' => 'Search our live-in care opportunities by location, care type, or working pattern. We have positions available throughout England, Scotland, Wales, and Northern Ireland. Filter by your preferences including urban or rural settings, client needs, and schedule flexibility. Our matching system ensures you find a role that suits your skills, experience, and lifestyle. New positions are added daily - find your ideal placement today.',
                    ],
                    'pl' => [
                        'title' => 'Znajdź Swoją Idealną Pozycję w Opiece Domowej',
                        'subtitle' => 'Przeglądaj dostępne możliwości w całej Wielkiej Brytanii',
                        'content' => 'Wyszukaj nasze możliwości opieki domowej według lokalizacji, rodzaju opieki lub wzorca pracy. Mamy stanowiska dostępne w całej Anglii, Szkocji, Walii i Irlandii Północnej. Filtruj według swoich preferencji, w tym ustawień miejskich lub wiejskich, potrzeb klienta i elastyczności harmonogramu. Nasz system dopasowywania zapewnia, że znajdziesz rolę odpowiadającą Twoim umiejętnościom, doświadczeniu i stylowi życia. Nowe stanowiska są dodawane codziennie - znajdź swoje idealne miejsce już dziś.',
                    ],
                ],
            ],
            [
                'key' => 'benefits',
                'type' => 'benefits',
                'order' => 3,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Why Choose a Career with Sunrise & Sunset Home Care?',
                        'subtitle' => 'Discover the comprehensive benefits package designed for your wellbeing',
                        'content' => 'At Sunrise & Sunset Home Care, we believe that exceptional care starts with exceptional support for our carers. We offer one of the most comprehensive benefits packages in the industry, combining competitive financial rewards with genuine work-life balance and continuous professional development. Our carers are the heart of what we do, and we invest in your success, wellbeing, and career growth every step of the way.',
                    ],
                    'pl' => [
                        'title' => 'Dlaczego Warto Wybrać Karierę z Sunrise & Sunset Home Care?',
                        'subtitle' => 'Odkryj kompleksowy pakiet benefitów zaprojektowany dla Twojego dobrego samopoczucia',
                        'content' => 'W Sunrise & Sunset Home Care wierzymy, że wyjątkowa opieka zaczyna się od wyjątkowego wsparcia dla naszych opiekunów. Oferujemy jeden z najbardziej kompleksowych pakietów benefitów w branży, łączący konkurencyjne nagrody finansowe z prawdziwą równowagą między pracą a życiem oraz ciągłym rozwojem zawodowym. Nasi opiekunowie są sercem tego, co robimy, i inwestujemy w Twój sukces, dobrostan i rozwój kariery na każdym kroku.',
                    ],
                ],
            ],
            [
                'key' => 'duties',
                'type' => 'duties',
                'order' => 4,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Your Role & Responsibilities as a Live-In Carer',
                        'subtitle' => 'Understanding what you\'ll do to make a difference every day',
                        'content' => 'As a live-in carer with Sunrise & Sunset Home Care, you\'ll provide personalized, one-on-one care that enables clients to live independently and comfortably in their own homes. Your role focuses on supporting daily living while promoting dignity, independence, and quality of life. You\'ll assist with personal care including washing, dressing, and mobility support; prepare nutritious meals tailored to dietary needs; manage medication schedules; provide companionship and emotional support; assist with household tasks and shopping; support hobbies and social activities; and accompany clients to appointments and outings. Each client is unique, and we\'ll match you with placements that suit your skills and experience. You\'ll have daily breaks, 2-3 hours of personal time, and a full night\'s sleep in your private room.',
                    ],
                    'pl' => [
                        'title' => 'Twoja Rola i Obowiązki jako Opiekun Domowy',
                        'subtitle' => 'Zrozumienie, co będziesz robić, aby codziennie wprowadzać zmianę',
                        'content' => 'Jako opiekun domowy w Sunrise & Sunset Home Care będziesz zapewniać spersonalizowaną opiekę jeden na jeden, która umożliwia klientom samodzielne i wygodne życie we własnych domach. Twoja rola koncentruje się na wspieraniu codziennego życia przy jednoczesnym promowaniu godności, niezależności i jakości życia. Będziesz pomagać w opiece osobistej, w tym myciu, ubieraniu i wsparciu mobilności; przygotowywać pożywne posiłki dostosowane do potrzeb dietetycznych; zarządzać harmonogramami leków; zapewniać towarzystwo i wsparcie emocjonalne; pomagać w zadaniach domowych i zakupach; wspierać hobby i zajęcia społeczne; towarzyszyć klientom na spotkaniach i wyjściach. Każdy klient jest wyjątkowy i dopasujemy Cię do miejsc odpowiadających Twoim umiejętnościom i doświadczeniu. Będziesz mieć codzienne przerwy, 2-3 godziny czasu osobistego i pełen sen nocny w swoim prywatnym pokoju.',
                    ],
                ],
            ],
            [
                'key' => 'training',
                'type' => 'training',
                'order' => 5,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Professional Training & Career Development',
                        'subtitle' => 'Invest in your future with our comprehensive CQC-registered training programs',
                        'content' => 'Your professional development is our priority. Every Sunrise & Sunset Home Care carer receives comprehensive, CQC-registered training at no cost, whether you\'re starting your care career or advancing your expertise. Our training covers all essential skills including personal care techniques, health and safety, medication management, dementia care, first aid and emergency response, nutrition and meal planning, safeguarding, mental health awareness, and specialized care techniques. You\'ll receive ongoing support, annual refresher courses, and opportunities to gain recognized qualifications including NVQ Level 2 and 3 in Health and Social Care. We also offer mentorship programs, peer support networks, and clear pathways to senior care positions and specialist roles.',
                    ],
                    'pl' => [
                        'title' => 'Profesjonalne Szkolenia i Rozwój Kariery',
                        'subtitle' => 'Zainwestuj w swoją przyszłość dzięki naszym kompleksowym programom szkoleniowym zarejestrowanym przez CQC',
                        'content' => 'Twój rozwój zawodowy jest naszym priorytetem. Każdy opiekun Sunrise & Sunset Home Care otrzymuje kompleksowe szkolenie zarejestrowane przez CQC bez żadnych kosztów, niezależnie od tego, czy rozpoczynasz swoją karierę w opiece, czy rozwijasz swoją wiedzę specjalistyczną. Nasze szkolenia obejmują wszystkie niezbędne umiejętności, w tym techniki opieki osobistej, zdrowie i bezpieczeństwo, zarządzanie lekami, opiekę nad osobami z demencją, pierwszą pomoc i reakcję awaryjną, żywienie i planowanie posiłków, ochronę, świadomość zdrowia psychicznego i specjalistyczne techniki opieki. Otrzymasz bieżące wsparcie, coroczne kursy odświeżające i możliwości zdobycia uznanych kwalifikacji, w tym NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej. Oferujemy również programy mentorskie, sieci wsparcia rówieśniczego i jasne ścieżki do stanowisk kierowniczych w opiece i ról specjalistycznych.',
                    ],
                ],
            ],
            [
                'key' => 'testimonials',
                'type' => 'testimonials',
                'order' => 6,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Success Stories from Our Carers',
                        'subtitle' => 'Hear from the people who make Sunrise & Sunset Home Care special',
                        'content' => 'Don\'t just take our word for it - hear directly from our experienced carers about their rewarding careers with Sunrise & Sunset Home Care. Our team members share their experiences of making a real difference, building meaningful relationships with clients, and enjoying the support and benefits that come with being part of the Sunrise & Sunset Home Care family. From career changers finding their true calling to experienced professionals advancing their skills, every carer has a unique story of growth, fulfillment, and positive impact.',
                    ],
                    'pl' => [
                        'title' => 'Historie Sukcesu Naszych Opiekunów',
                        'subtitle' => 'Usłysz od ludzi, którzy czynią Sunrise & Sunset Home Care wyjątkowym',
                        'content' => 'Nie wierz nam tylko na słowo - usłysz bezpośrednio od naszych doświadczonych opiekunów o ich satysfakcjonujących karierach z Sunrise & Sunset Home Care. Nasi członkowie zespołu dzielą się swoimi doświadczeniami wprowadzania prawdziwej zmiany, budowania znaczących relacji z klientami i cieszenia się wsparciem i korzyściami, które wiążą się z byciem częścią rodziny Sunrise & Sunset Home Care. Od osób zmieniających karierę, które znajdują swoje prawdziwe powołanie, po doświadczonych profesjonalistów rozwijających swoje umiejętności, każdy opiekun ma unikalną historię rozwoju, spełnienia i pozytywnego wpływu.',
                    ],
                ],
            ],
            [
                'key' => 'faq',
                'type' => 'faq',
                'order' => 7,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'Frequently Asked Questions',
                        'subtitle' => 'Get answers to common questions about working with us',
                        'content' => 'We understand you may have questions about starting your career as a live-in carer with Sunrise & Sunset Home Care. Below you\'ll find answers to the most common questions from prospective carers about qualifications, working patterns, support, pay, training, and daily responsibilities. Can\'t find what you\'re looking for? Our friendly recruitment team is here to help - get in touch today.',
                    ],
                    'pl' => [
                        'title' => 'Często Zadawane Pytania',
                        'subtitle' => 'Uzyskaj odpowiedzi na najczęstsze pytania dotyczące pracy z nami',
                        'content' => 'Rozumiemy, że możesz mieć pytania dotyczące rozpoczęcia kariery jako opiekun domowy z Sunrise & Sunset Home Care. Poniżej znajdziesz odpowiedzi na najczęstsze pytania od przyszłych opiekunów dotyczące kwalifikacji, wzorców pracy, wsparcia, wynagrodzenia, szkoleń i codziennych obowiązków. Nie możesz znaleźć tego, czego szukasz? Nasz przyjazny zespół rekrutacyjny jest tutaj, aby pomóc - skontaktuj się z nami już dziś.',
                    ],
                ],
            ],
            [
                'key' => 'application_process',
                'type' => 'application_process',
                'order' => 8,
                'active' => true,
                'translations' => [
                    'en' => [
                        'title' => 'How to Apply - Start Your Journey Today',
                        'subtitle' => 'Your path to a rewarding career is just a few simple steps away',
                        'content' => 'Joining Sunrise & Sunset Home Care is straightforward and we\'re with you every step of the way. Here\'s what to expect: 1) Submit your application online or call us for an informal chat about opportunities. 2) Attend a friendly interview where we discuss your experience, preferences, and answer all your questions. 3) Complete reference checks and enhanced DBS clearance (we\'ll guide you through this). 4) Participate in comprehensive paid training covering all essential care skills. 5) Get matched with your first client based on your preferences and skills. 6) Start making a difference! The process typically takes 2-4 weeks, though it can be faster if you have existing qualifications. We keep you informed throughout and provide support at every stage. Ready to begin? Apply now or contact our team to learn more.',
                    ],
                    'pl' => [
                        'title' => 'Jak Aplikować - Rozpocznij Swoją Podróż Już Dziś',
                        'subtitle' => 'Twoja ścieżka do satysfakcjonującej kariery to tylko kilka prostych kroków',
                        'content' => 'Dołączenie do Sunrise & Sunset Home Care jest proste i jesteśmy z Tobą na każdym kroku. Oto, czego możesz się spodziewać: 1) Prześlij swoją aplikację online lub zadzwoń do nas, aby porozmawiać o możliwościach. 2) Weź udział w przyjaznej rozmowie kwalifikacyjnej, podczas której omówimy Twoje doświadczenie, preferencje i odpowiemy na wszystkie Twoje pytania. 3) Ukończ sprawdzanie referencji i rozszerzoną weryfikację DBS (przeprowadzimy Cię przez to). 4) Weź udział w kompleksowym płatnym szkoleniu obejmującym wszystkie niezbędne umiejętności opiekuńcze. 5) Zostań dopasowany do swojego pierwszego klienta na podstawie Twoich preferencji i umiejętności. 6) Zacznij wprowadzać zmianę! Proces zazwyczaj trwa 2-4 tygodnie, chociaż może być szybszy, jeśli masz istniejące kwalifikacje. Informujemy Cię przez cały czas i zapewniamy wsparcie na każdym etapie. Gotowy, aby zacząć? Aplikuj teraz lub skontaktuj się z naszym zespołem, aby dowiedzieć się więcej.',
                    ],
                ],
            ],
        ];

        foreach ($sections as $sectionData) {
            $translations = $sectionData['translations'];
            unset($sectionData['translations']);

            $section = DB::table('sections')->insertGetId([
                'key' => $sectionData['key'],
                'type' => $sectionData['type'],
                'order' => $sectionData['order'],
                'active' => $sectionData['active'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            foreach ($translations as $locale => $translation) {
                DB::table('section_translations')->insert([
                    'section_id' => $section,
                    'locale' => $locale,
                    'title' => $translation['title'] ?? null,
                    'subtitle' => $translation['subtitle'] ?? null,
                    'content' => $translation['content'] ?? null,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
