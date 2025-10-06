<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BenefitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $benefits = [
            [
                'title_en' => 'Competitive Weekly Pay',
                'description_en' => 'Earn £800-£1,200 per week depending on experience, qualifications, and location. We offer some of the best rates in the live-in care industry with transparent pay structures and regular reviews. Your hard work and dedication are recognized and rewarded.',
                'title_pl' => 'Konkurencyjne Wynagrodzenie Tygodniowe',
                'description_pl' => 'Zarabiaj £800-£1,200 tygodniowo w zależności od doświadczenia, kwalifikacji i lokalizacji. Oferujemy jedne z najlepszych stawek w branży opieki domowej z przejrzystymi strukturami wynagrodzeń i regularnymi przeglądami. Twoja ciężka praca i oddanie są doceniane i nagradzane.',
                'icon' => 'currency-pound',
                'order' => 1,
                'active' => true,
            ],
            [
                'title_en' => 'Free Accommodation & All Meals',
                'description_en' => 'Live rent-free in comfortable, private accommodation with your own bedroom and often en-suite facilities. All meals are provided throughout your assignment, allowing you to save significantly while earning. Enjoy quality living spaces that feel like a home away from home.',
                'title_pl' => 'Bezpłatne Zakwaterowanie i Wszystkie Posiłki',
                'description_pl' => 'Mieszkaj bez czynszu w komfortowym, prywatnym zakwaterowaniu z własną sypialnią i często łazienką en-suite. Wszystkie posiłki są zapewnione podczas twojego zlecenia, pozwalając na znaczne oszczędności podczas zarabiania. Ciesz się jakościowymi przestrzeniami mieszkalnymi, które przypominają dom z dala od domu.',
                'icon' => 'home',
                'order' => 2,
                'active' => true,
            ],
            [
                'title_en' => 'Comprehensive CQC-Registered Training',
                'description_en' => 'Receive full CQC-registered training and professional certification at absolutely no cost to you. Our comprehensive program covers personal care, medication management, dementia care, first aid, safeguarding, and specialized techniques. Gain recognized qualifications including NVQ Level 2 and 3 in Health and Social Care.',
                'title_pl' => 'Kompleksowe Szkolenia Zarejestrowane przez CQC',
                'description_pl' => 'Otrzymaj pełne szkolenie zarejestrowane przez CQC i profesjonalną certyfikację bez żadnych kosztów. Nasz kompleksowy program obejmuje opiekę osobistą, zarządzanie lekami, opiekę nad osobami z demencją, pierwszą pomoc, ochronę i specjalistyczne techniki. Zdobądź uznane kwalifikacje, w tym NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej.',
                'icon' => 'academic-cap',
                'order' => 3,
                'active' => true,
            ],
            [
                'title_en' => 'Healthcare & Wellbeing Benefits',
                'description_en' => 'Access to healthcare benefits including occupational health support, counseling services, and wellbeing programs. We care about your physical and mental health as much as you care for our clients. Regular health checks and professional support are available to all carers.',
                'title_pl' => 'Świadczenia Zdrowotne i Dobrego Samopoczucia',
                'description_pl' => 'Dostęp do świadczeń zdrowotnych, w tym wsparcia zdrowia zawodowego, usług doradczych i programów dobrego samopoczucia. Dbamy o Twoje zdrowie fizyczne i psychiczne tak samo, jak Ty dbasz o naszych klientów. Regularne kontrole zdrowotne i profesjonalne wsparcie są dostępne dla wszystkich opiekunów.',
                'icon' => 'shield-check',
                'order' => 4,
                'active' => true,
            ],
            [
                'title_en' => 'Clear Career Progression Pathways',
                'description_en' => 'Build a rewarding long-term career with transparent progression opportunities. Advance from live-in carer to senior carer, specialist positions, care coordinator, or training roles. We invest in your professional development with mentorship programs, advanced qualifications, and leadership training.',
                'title_pl' => 'Jasne Ścieżki Rozwoju Kariery',
                'description_pl' => 'Zbuduj satysfakcjonującą długoterminową karierę z przejrzystymi możliwościami awansu. Awansuj z opiekuna domowego do starszego opiekuna, stanowisk specjalistycznych, koordynatora opieki lub ról szkoleniowych. Inwestujemy w Twój rozwój zawodowy poprzez programy mentorskie, zaawansowane kwalifikacje i szkolenia przywódcze.',
                'icon' => 'chart-bar',
                'order' => 5,
                'active' => true,
            ],
            [
                'title_en' => 'Flexible Working Schedules',
                'description_en' => 'Choose working patterns that suit your lifestyle and personal commitments. Options include 2 weeks on/1 week off, 4 weeks on/2 weeks off, or custom arrangements. Your time off is genuinely yours - return home, travel, or relax knowing your next placement is arranged around your availability.',
                'title_pl' => 'Elastyczne Harmonogramy Pracy',
                'description_pl' => 'Wybierz wzorce pracy odpowiadające Twojemu stylowi życia i osobistym zobowiązaniom. Opcje obejmują 2 tygodnie pracy/1 tydzień wolnego, 4 tygodnie pracy/2 tygodnie wolnego lub niestandardowe ustalenia. Twój czas wolny jest naprawdę Twój - wróć do domu, podróżuj lub odpocznij, wiedząc, że Twoje następne miejsce pracy jest zorganizowane zgodnie z Twoją dostępnością.',
                'icon' => 'clock',
                'order' => 6,
                'active' => true,
            ],
            [
                'title_en' => '24/7 Dedicated Support Network',
                'description_en' => 'Never feel alone in your role. Access round-the-clock support from experienced care coordinators, clinical advisors, and dedicated support teams. Join peer support groups, attend regular carer meetups, and benefit from ongoing guidance whenever you need it - day or night.',
                'title_pl' => 'Dedykowana Sieć Wsparcia 24/7',
                'description_pl' => 'Nigdy nie czuj się samotny w swojej roli. Uzyskaj całodobowe wsparcie od doświadczonych koordynatorów opieki, doradców klinicznych i dedykowanych zespołów wsparcia. Dołącz do grup wsparcia rówieśniczego, uczestniczyć w regularnych spotkaniach opiekunów i korzystaj z bieżących wskazówek, kiedy tylko potrzebujesz - w dzień i w nocy.',
                'icon' => 'phone',
                'order' => 7,
                'active' => true,
            ],
            [
                'title_en' => 'Full Travel Expenses Covered',
                'description_en' => 'All travel costs between assignments are completely covered by us. Whether by flight, train, coach, or personal vehicle (mileage reimbursement), you won\'t be out of pocket. We handle all arrangements to ensure your journey between placements is stress-free and fully funded.',
                'title_pl' => 'Pełne Pokrycie Kosztów Podróży',
                'description_pl' => 'Wszystkie koszty podróży między zleceniami są całkowicie pokryte przez nas. Bez względu na to, czy lotem, pociągiem, autokarem czy pojazdem osobistym (zwrot kosztów przejazdu), nie będziesz nic płacić. Zajmujemy się wszystkimi ustaleniami, aby zapewnić, że Twoja podróż między miejscami pracy jest bezstresowa i w pełni sfinansowana.',
                'icon' => 'truck',
                'order' => 8,
                'active' => true,
            ],
            [
                'title_en' => 'Paid Annual Leave & Holidays',
                'description_en' => 'Enjoy statutory paid holiday entitlement in addition to your regular time off between assignments. Plan holidays and breaks with guaranteed income, ensuring you maintain a healthy work-life balance. Bank holidays and special occasions are recognized and compensated.',
                'title_pl' => 'Płatny Urlop Roczny i Święta',
                'description_pl' => 'Ciesz się ustawowym płatnym urlopem wypoczynkowym oprócz regularnego czasu wolnego między zleceniami. Planuj wakacje i przerwy z gwarantowanym dochodem, zapewniając utrzymanie zdrowej równowagi między pracą a życiem. Dni ustawowo wolne od pracy i specjalne okazje są uznawane i kompensowane.',
                'icon' => 'calendar',
                'order' => 9,
                'active' => true,
            ],
            [
                'title_en' => 'Continuous Professional Development',
                'description_en' => 'Access ongoing learning opportunities with regular refresher courses, advanced training modules, and specialist certifications. Attend workshops, conferences, and seminars to expand your expertise. We support your passion for learning with funded courses and dedicated study time.',
                'title_pl' => 'Ciągły Rozwój Zawodowy',
                'description_pl' => 'Uzyskaj dostęp do bieżących możliwości uczenia się dzięki regularnym kursom odświeżającym, zaawansowanym modułom szkoleniowym i certyfikatom specjalistycznym. Uczestniczyć w warsztatach, konferencjach i seminariach, aby poszerzyć swoją wiedzę. Wspieramy Twoją pasję do nauki finansowanymi kursami i dedykowanym czasem nauki.',
                'icon' => 'book-open',
                'order' => 10,
                'active' => true,
            ],
            [
                'title_en' => 'Work-Life Balance Guaranteed',
                'description_en' => 'We understand the importance of personal time. Enjoy structured breaks during assignments, regular scheduled time off, and the flexibility to maintain relationships and pursue interests outside work. Our scheduling respects your need for rest, recreation, and quality time with loved ones.',
                'title_pl' => 'Gwarantowana Równowaga Między Pracą a Życiem',
                'description_pl' => 'Rozumiemy znaczenie czasu osobistego. Ciesz się ustrukturyzowanymi przerwami podczas zleceń, regularnym zaplanowanym czasem wolnym i elastycznością w utrzymywaniu relacji i realizowaniu zainteresowań poza pracą. Nasz harmonogram szanuje Twoją potrzebę odpoczynku, rekreacji i czasu jakości z bliskimi.',
                'icon' => 'sun',
                'order' => 11,
                'active' => true,
            ],
            [
                'title_en' => 'Make a Meaningful Impact',
                'description_en' => 'Experience the profound satisfaction of making a genuine difference every single day. Provide one-on-one care that enables clients to live independently with dignity in their own homes. Build meaningful relationships, witness positive changes, and know your work truly matters to the people you support.',
                'title_pl' => 'Wprowadź Znaczący Wpływ',
                'description_pl' => 'Doświadcz głębokiej satysfakcji z wprowadzania prawdziwej zmiany każdego dnia. Zapewnij opiekę jeden na jeden, która umożliwia klientom samodzielne życie z godnością we własnych domach. Buduj znaczące relacje, obserwuj pozytywne zmiany i wiedz, że Twoja praca naprawdę ma znaczenie dla ludzi, których wspierasz.',
                'icon' => 'heart',
                'order' => 12,
                'active' => true,
            ],
        ];

        foreach ($benefits as $benefit) {
            DB::table('benefits')->insert([
                'title_en' => $benefit['title_en'],
                'description_en' => $benefit['description_en'],
                'title_pl' => $benefit['title_pl'],
                'description_pl' => $benefit['description_pl'],
                'icon' => $benefit['icon'],
                'order' => $benefit['order'],
                'active' => $benefit['active'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
