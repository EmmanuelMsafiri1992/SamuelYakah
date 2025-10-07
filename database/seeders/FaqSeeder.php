<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FaqSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faqs = [
            [
                'question_en' => 'What qualifications do I need to become a live-in carer?',
                'answer_en' => 'While formal qualifications are not always required, we value compassion, reliability, patience, and a genuine desire to help others. The essential requirements are: basic English communication skills, right to work in the UK, willingness to undergo an enhanced DBS check, and physical ability to assist with mobility and personal care. We provide comprehensive CQC-registered training for all new carers, including opportunities to gain NVQ Level 2 or 3 in Health and Social Care at no cost. Previous care experience is beneficial but not mandatory - we welcome career changers and those new to care who have the right attitude and commitment.',
                'question_pl' => 'Jakie kwalifikacje są potrzebne, aby zostać opiekunem domowym?',
                'answer_pl' => 'Chociaż formalne kwalifikacje nie zawsze są wymagane, cenimy współczucie, niezawodność, cierpliwość i szczere pragnienie pomocy innym. Podstawowe wymagania to: podstawowe umiejętności komunikacji w języku angielskim, prawo do pracy w Wielkiej Brytanii, chęć poddania się rozszerzonemu sprawdzeniu DBS i fizyczna zdolność do pomocy w mobilności i opiece osobistej. Zapewniamy kompleksowe szkolenia zarejestrowane przez CQC dla wszystkich nowych opiekunów, w tym możliwości zdobycia NVQ Level 2 lub 3 w zakresie zdrowia i opieki społecznej bez żadnych kosztów. Poprzednie doświadczenie w opiece jest korzystne, ale nie obowiązkowe - witamy osoby zmieniające karierę i nowe w opiece, które mają odpowiednie nastawienie i zaangażowanie.',
                'order' => 1,
                'active' => true,
            ],
            [
                'question_en' => 'Am I employed or self-employed as a live-in carer?',
                'answer_en' => 'At Violetta Home Care Limited, you are employed directly by us on a PAYE basis, not self-employed. This means you receive all employment benefits including holiday pay, sick pay, pension contributions, and full tax and National Insurance contributions handled by us. You\'re protected by employment law, receive regular payslips, and have the security of being a valued employee. This is different from agency work and provides much greater stability and benefits.',
                'question_pl' => 'Czy jestem zatrudniony czy samozatrudniony jako opiekun domowy?',
                'answer_pl' => 'W Violetta Home Care Limited jesteś zatrudniony bezpośrednio przez nas na zasadzie PAYE, a nie samozatrudniony. Oznacza to, że otrzymujesz wszystkie świadczenia pracownicze, w tym wynagrodzenie urlopowe, zasiłek chorobowy, składki emerytalne oraz pełne składki podatkowe i ubezpieczenia społecznego obsługiwane przez nas. Jesteś chroniony przez prawo pracy, otrzymujesz regularne paski wynagrodzeń i masz bezpieczeństwo bycia cenionym pracownikiem. To różni się od pracy agencyjnej i zapewnia znacznie większą stabilność i korzyści.',
                'order' => 2,
                'active' => true,
            ],
            [
                'question_en' => 'How much time off do I get between assignments?',
                'answer_en' => 'We offer flexible working patterns designed around your lifestyle and personal commitments. The most popular arrangements are 2 weeks on/1 week off or 4 weeks on/2 weeks off, but we can discuss custom patterns that work for you. During your time off, you are completely free to return home, travel, spend time with family, or relax as you wish. Your time off is genuinely yours - we don\'t contact you during breaks unless you request us to. We plan your next assignment around your availability and always give you advance notice of upcoming placements.',
                'question_pl' => 'Ile czasu wolnego otrzymuję między zleceniami?',
                'answer_pl' => 'Oferujemy elastyczne wzorce pracy zaprojektowane wokół Twojego stylu życia i osobistych zobowiązań. Najpopularniejsze układy to 2 tygodnie pracy/1 tydzień wolnego lub 4 tygodnie pracy/2 tygodnie wolnego, ale możemy omówić niestandardowe wzorce, które Ci odpowiadają. Podczas czasu wolnego jesteś całkowicie wolny, aby wrócić do domu, podróżować, spędzić czas z rodziną lub odpocząć, jak chcesz. Twój czas wolny jest naprawdę Twój - nie kontaktujemy się z Tobą podczas przerw, chyba że o to poprosisz. Planujemy Twoje następne zlecenie zgodnie z Twoją dostępnością i zawsze informujemy z wyprzedzeniem o nadchodzących miejscach pracy.',
                'order' => 3,
                'active' => true,
            ],
            [
                'question_en' => 'What does a typical day look like as a live-in carer?',
                'answer_en' => 'Each day varies depending on your client\'s individual needs and preferences, making the role interesting and varied. A typical day might include: helping with morning routines like washing and dressing; preparing and sharing meals together; administering medication according to prescribed schedules; light housekeeping tasks; accompanying the client on shopping trips or appointments; supporting hobbies and interests; providing companionship and conversation; and assisting with evening routines. You\'ll have structured breaks throughout the day, typically 2-3 hours of personal time in the afternoon, and a full 8 hours of uninterrupted sleep at night in your private room. The role focuses on enabling independence and maintaining dignity, not doing everything for the client. You work alongside them, supporting their abilities while assisting where needed.',
                'question_pl' => 'Jak wygląda typowy dzień jako opiekun domowy?',
                'answer_pl' => 'Każdy dzień różni się w zależności od indywidualnych potrzeb i preferencji klienta, dzięki czemu rola jest interesująca i zróżnicowana. Typowy dzień może obejmować: pomoc w porannych czynnościach, takich jak mycie i ubieranie; przygotowywanie i dzielenie posiłków razem; podawanie leków zgodnie z przepisanymi harmonogramami; lekkie zadania domowe; towarzyszenie klientowi podczas zakupów lub wizyt; wspieranie hobby i zainteresowań; zapewnianie towarzystwa i rozmowy; pomoc w wieczornych czynnościach. Będziesz mieć ustrukturyzowane przerwy w ciągu dnia, zazwyczaj 2-3 godziny czasu osobistego po południu i pełne 8 godzin nieprzerwanego snu w nocy w swoim prywatnym pokoju. Rola koncentruje się na umożliwieniu niezależności i utrzymaniu godności, a nie robieniu wszystkiego za klienta. Pracujesz razem z nimi, wspierając ich umiejętności, jednocześnie pomagając tam, gdzie jest to potrzebne.',
                'order' => 4,
                'active' => true,
            ],
            [
                'question_en' => 'Will I have my own room and privacy?',
                'answer_en' => 'Absolutely yes. You will always have your own private bedroom in the client\'s home, and we never place two carers in one room. Most placements offer en-suite bathroom facilities, though this isn\'t always possible in every home. You\'ll have full access to household amenities including kitchen, living areas, laundry facilities, and often WiFi. Your room is your private space to relax during breaks and rest at night. You\'re entitled to structured breaks during the day, personal time in the afternoon, and a guaranteed 8 hours of uninterrupted sleep each night. We inspect all accommodations before placement to ensure they meet our quality and comfort standards.',
                'question_pl' => 'Czy będę mieć własny pokój i prywatność?',
                'answer_pl' => 'Absolutnie tak. Zawsze będziesz mieć własną prywatną sypialnię w domu klienta i nigdy nie umieszczamy dwóch opiekunów w jednym pokoju. Większość miejsc oferuje łazienkę en-suite, chociaż nie zawsze jest to możliwe w każdym domu. Będziesz mieć pełny dostęp do domowych udogodnień, w tym kuchni, salonów, pralni i często WiFi. Twój pokój jest Twoją prywatną przestrzenią do relaksu podczas przerw i odpoczynku w nocy. Przysługują Ci ustrukturyzowane przerwy w ciągu dnia, czas osobisty po południu i gwarantowane 8 godzin nieprzerwanego snu każdej nocy. Sprawdzamy wszystkie zakwaterowania przed umieszczeniem, aby upewnić się, że spełniają nasze standardy jakości i komfortu.',
                'order' => 5,
                'active' => true,
            ],
            [
                'question_en' => 'What support will I receive while on assignment?',
                'answer_en' => 'Comprehensive support is a cornerstone of working with Violetta Home Care Limited. You\'ll have access to 24/7 support from experienced care coordinators who understand the challenges and rewards of live-in care. Our clinical team provides expert advice on medical and care-related questions. We conduct regular check-in calls to ensure everything is going well and you have everything you need. You\'ll join peer support groups where you can connect with fellow carers, share experiences, and build friendships. We offer ongoing training opportunities, annual refresher courses, and access to specialist advice when needed. If any issues arise - whether practical, medical, or personal - you can contact us anytime, day or night, for guidance, emergency support, or just to talk through concerns. Regular reviews ensure both you and your client are satisfied with the arrangement.',
                'question_pl' => 'Jakie wsparcie otrzymam podczas zlecenia?',
                'answer_pl' => 'Kompleksowe wsparcie jest kamieniem węgielnym pracy z Violetta Home Care Limited. Będziesz mieć dostęp do całodobowego wsparcia od doświadczonych koordynatorów opieki, którzy rozumieją wyzwania i nagrody opieki domowej. Nasz zespół kliniczny zapewnia fachowe porady w kwestiach medycznych i związanych z opieką. Prowadzimy regularne rozmowy kontrolne, aby upewnić się, że wszystko idzie dobrze i masz wszystko, czego potrzebujesz. Dołączysz do grup wsparcia rówieśniczego, gdzie możesz połączyć się z innymi opiekunami, dzielić się doświadczeniami i budować przyjaźnie. Oferujemy bieżące możliwości szkoleniowe, coroczne kursy odświeżające i dostęp do porad specjalistycznych, gdy jest to potrzebne. Jeśli pojawią się jakiekolwiek problemy - czy to praktyczne, medyczne czy osobiste - możesz się z nami skontaktować w dowolnym momencie, w dzień lub w nocy, w celu uzyskania wskazówek, pomocy awaryjnej lub po prostu omówienia obaw. Regularne przeglądy zapewniają, że zarówno Ty, jak i Twój klient jesteście zadowoleni z układu.',
                'order' => 6,
                'active' => true,
            ],
            [
                'question_en' => 'Can I choose where I work and who I care for?',
                'answer_en' => 'Yes, you have significant input in your placements. During your induction and throughout your career with us, we discuss your preferences in detail including preferred locations (urban/rural, specific regions, proximity to your home), types of care you\'re comfortable with (dementia care, physical disabilities, general elderly care, etc.), working patterns that suit your lifestyle, and any specific requirements like pets, non-smoking homes, or dietary preferences. While we can\'t guarantee every single preference, we work diligently to match you with clients and locations that align with your skills, experience, and personal preferences. You\'ll always have the opportunity to speak with the client or their family, learn about their needs and home environment, and ask questions before accepting any assignment. You\'re never pressured to accept a placement you\'re uncomfortable with.',
                'question_pl' => 'Czy mogę wybrać, gdzie pracuję i o kogo się opiekuję?',
                'answer_pl' => 'Tak, masz znaczący wpływ na swoje miejsca pracy. Podczas Twojego wprowadzenia i przez całą karierę z nami szczegółowo omawiamy Twoje preferencje, w tym preferowane lokalizacje (miejskie/wiejskie, określone regiony, bliskość Twojego domu), rodzaje opieki, z którymi czujesz się komfortowo (opieka nad osobami z demencją, niepełnosprawności fizyczne, ogólna opieka nad osobami starszymi itp.), wzorce pracy odpowiadające Twojemu stylowi życia oraz wszelkie specyficzne wymagania, takie jak zwierzęta domowe, domy dla niepalących lub preferencje dietetyczne. Chociaż nie możemy zagwarantować każdej preferencji, ciężko pracujemy, aby dopasować Cię do klientów i lokalizacji zgodnych z Twoimi umiejętnościami, doświadczeniem i osobistymi preferencjami. Zawsze będziesz mieć możliwość rozmowy z klientem lub jego rodziną, poznania ich potrzeb i środowiska domowego oraz zadawania pytań przed przyjęciem jakiegokolwiek zlecenia. Nigdy nie jesteś zmuszany do przyjęcia miejsca pracy, z którym czujesz się niekomfortowo.',
                'order' => 7,
                'active' => true,
            ],
            [
                'question_en' => 'How much will I earn as a live-in carer?',
                'answer_en' => 'Live-in carers at Violetta Home Care Limited earn between £800 and £1,200 per week, depending on your experience, qualifications, location, and the specific care needs of the client. This competitive rate is paid weekly via PAYE with all taxes and National Insurance handled by us. Remember, your accommodation and all meals are provided free of charge, meaning your salary is genuinely disposable income. You can save significantly compared to other jobs. You also receive statutory paid holiday entitlement, sick pay, and pension contributions. Many of our carers save substantial amounts each year due to the lack of rent, utility bills, and daily living expenses. We conduct regular pay reviews and recognize experience and additional qualifications with salary increases.',
                'question_pl' => 'Ile zarobię jako opiekun domowy?',
                'answer_pl' => 'Opiekunowie domowi w Violetta Home Care Limited zarabiają od £800 do £1,200 tygodniowo, w zależności od Twojego doświadczenia, kwalifikacji, lokalizacji i specyficznych potrzeb opiekuńczych klienta. Ta konkurencyjna stawka jest wypłacana tygodniowo za pośrednictwem PAYE z wszystkimi podatkami i ubezpieczeniem społecznym obsługiwanym przez nas. Pamiętaj, że Twoje zakwaterowanie i wszystkie posiłki są zapewniane bezpłatnie, co oznacza, że Twoja pensja jest naprawdę dochodem do dyspozycji. Możesz zaoszczędzić znacznie w porównaniu z innymi pracami. Otrzymujesz również ustawowe płatne uprawnienie do urlopu, zasiłek chorobowy i składki emerytalne. Wielu naszych opiekunów oszczędza znaczne kwoty każdego roku ze względu na brak czynszu, rachunków za media i codziennych kosztów utrzymania. Prowadzimy regularne przeglądy wynagrodzeń i uznajemy doświadczenie i dodatkowe kwalifikacje podwyżkami płac.',
                'order' => 8,
                'active' => true,
            ],
            [
                'question_en' => 'What training is provided and is there a cost?',
                'answer_en' => 'All training at Violetta Home Care Limited is completely free - we invest in your development at no cost to you. Every new carer receives comprehensive, CQC-registered induction training covering essential care skills, health and safety, safeguarding, first aid, medication administration, infection control, dementia awareness, and much more. This paid training typically takes place over several days before your first placement. Throughout your career with us, you\'ll receive ongoing training including annual mandatory refresher courses, specialist training for specific care needs (Parkinson\'s, stroke recovery, diabetes management, etc.), and opportunities to gain recognized qualifications like NVQ Level 2 and 3 in Health and Social Care. We also offer mentorship programs, advanced care training, and pathways to leadership roles. All training is paid time, and we cover any travel or accommodation costs if required.',
                'question_pl' => 'Jakie szkolenie jest zapewniane i czy wiąże się z kosztami?',
                'answer_pl' => 'Wszystkie szkolenia w Violetta Home Care Limited są całkowicie bezpłatne - inwestujemy w Twój rozwój bez żadnych kosztów dla Ciebie. Każdy nowy opiekun otrzymuje kompleksowe szkolenie wprowadzające zarejestrowane przez CQC obejmujące niezbędne umiejętności opiekuńcze, zdrowie i bezpieczeństwo, ochronę, pierwszą pomoc, podawanie leków, kontrolę infekcji, świadomość demencji i wiele więcej. To płatne szkolenie zazwyczaj odbywa się przez kilka dni przed Twoim pierwszym zleceniem. Przez całą karierę z nami będziesz otrzymywać bieżące szkolenia, w tym coroczne obowiązkowe kursy odświeżające, szkolenia specjalistyczne dla specyficznych potrzeb opiekuńczych (Parkinson, powrót do zdrowia po udarze, zarządzanie cukrzycą itp.) oraz możliwości zdobycia uznanych kwalifikacji, takich jak NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej. Oferujemy również programy mentorskie, zaawansowane szkolenia opiekuńcze i ścieżki do ról przywódczych. Całe szkolenie jest płatnym czasem i pokrywamy wszelkie koszty podróży lub zakwaterowania, jeśli jest to wymagane.',
                'order' => 9,
                'active' => true,
            ],
            [
                'question_en' => 'How quickly can I start working after applying?',
                'answer_en' => 'The timeline from application to your first placement typically takes 2-4 weeks, though it can be faster if you already have an enhanced DBS certificate and relevant care qualifications. The process includes: initial application review (1-2 days), telephone or video interview (usually within a week), face-to-face interview and assessment, reference checks (1-2 weeks), enhanced DBS check (1-3 weeks, can run concurrently), right to work verification, comprehensive paid induction training (2-5 days), and finally matching with your first client and placement. We keep you fully informed at every stage and work to get you started as quickly as possible while ensuring all necessary checks and training are thorough. If you\'re currently working elsewhere, we\'re happy to schedule around your notice period. Some carers with existing qualifications and clearances have started within a week.',
                'question_pl' => 'Jak szybko mogę rozpocząć pracę po aplikacji?',
                'answer_pl' => 'Czas od aplikacji do Twojego pierwszego zlecenia zazwyczaj wynosi 2-4 tygodnie, chociaż może być szybszy, jeśli już posiadasz rozszerzony certyfikat DBS i odpowiednie kwalifikacje opiekuńcze. Proces obejmuje: wstępny przegląd aplikacji (1-2 dni), rozmowę telefoniczną lub wideo (zazwyczaj w ciągu tygodnia), osobistą rozmowę kwalifikacyjną i ocenę, sprawdzanie referencji (1-2 tygodnie), rozszerzone sprawdzenie DBS (1-3 tygodnie, może przebiegać równocześnie), weryfikację prawa do pracy, kompleksowe płatne szkolenie wprowadzające (2-5 dni) i wreszcie dopasowanie do Twojego pierwszego klienta i miejsca pracy. Informujemy Cię na każdym etapie i pracujemy, aby rozpocząć tak szybko, jak to możliwe, jednocześnie zapewniając, że wszystkie niezbędne sprawdzenia i szkolenia są dokładne. Jeśli obecnie pracujesz gdzie indziej, chętnie zaplanujemy to zgodnie z Twoim okresem wypowiedzenia. Niektórzy opiekunowie z istniejącymi kwalifikacjami i zezwoleniami rozpoczęli w ciągu tygodnia.',
                'order' => 10,
                'active' => true,
            ],
            [
                'question_en' => 'What happens if I don\'t get along with a client or want to change placement?',
                'answer_en' => 'Your comfort and job satisfaction are important to us. While we carefully match carers and clients to ensure compatibility, we understand that occasionally placements don\'t work out as expected. If you\'re experiencing difficulties, contact your care coordinator immediately - we can often resolve issues through communication and support. If a placement genuinely isn\'t right for you, we will work to find you an alternative placement as quickly as possible. You\'re never expected to remain in a situation where you feel uncomfortable, unsafe, or unhappy. We conduct regular reviews during placements to catch and address any concerns early. Many carers stay with the same client for months or even years, building wonderful relationships, but when change is needed, we handle it professionally and promptly.',
                'question_pl' => 'Co się stanie, jeśli nie dogaduję się z klientem lub chcę zmienić miejsce pracy?',
                'answer_pl' => 'Twój komfort i satysfakcja z pracy są dla nas ważne. Chociaż starannie dopasowujemy opiekunów i klientów, aby zapewnić kompatybilność, rozumiemy, że czasami miejsca pracy nie sprawdzają się zgodnie z oczekiwaniami. Jeśli doświadczasz trudności, natychmiast skontaktuj się ze swoim koordynatorem opieki - często możemy rozwiązać problemy poprzez komunikację i wsparcie. Jeśli miejsce pracy naprawdę nie jest dla Ciebie odpowiednie, będziemy pracować, aby znaleźć Ci alternatywne miejsce pracy tak szybko, jak to możliwe. Nigdy nie oczekuje się, że pozostaniesz w sytuacji, w której czujesz się niekomfortowo, niebezpiecznie lub nieszczęśliwy. Prowadzimy regularne przeglądy podczas miejsc pracy, aby wcześnie wyłapać i rozwiązać wszelkie obawy. Wielu opiekunów pozostaje z tym samym klientem przez miesiące, a nawet lata, budując wspaniałe relacje, ale gdy zmiana jest potrzebna, obsługujemy to profesjonalnie i szybko.',
                'order' => 11,
                'active' => true,
            ],
            [
                'question_en' => 'Do I need to have a driving license?',
                'answer_en' => 'A driving license is not essential for all live-in care positions, but it can significantly increase your placement opportunities. Many clients live in rural or suburban areas where having a car is beneficial for shopping trips, appointments, and social outings. If you do drive, you can use the client\'s vehicle (with proper insurance arranged) or your own car with mileage expenses reimbursed for client-related journeys. However, we also have many placements in urban areas with good public transport, or where clients have family members who assist with transport, or where clients don\'t require regular outings. During the matching process, we consider your transport situation and find placements that work for you.',
                'question_pl' => 'Czy muszę mieć prawo jazdy?',
                'answer_pl' => 'Prawo jazdy nie jest niezbędne dla wszystkich stanowisk opieki domowej, ale może znacznie zwiększyć Twoje możliwości zatrudnienia. Wielu klientów mieszka na obszarach wiejskich lub podmiejskich, gdzie posiadanie samochodu jest korzystne dla wycieczek na zakupy, wizyt i wyjść towarzyskich. Jeśli prowadzisz, możesz używać pojazdu klienta (z odpowiednim ubezpieczeniem) lub własnego samochodu ze zwrotem kosztów przejazdu za podróże związane z klientem. Jednak mamy również wiele miejsc pracy w obszarach miejskich z dobrym transportem publicznym lub gdzie klienci mają członków rodziny, którzy pomagają w transporcie, lub gdzie klienci nie wymagają regularnych wyjazdów. Podczas procesu dopasowywania uwzględniamy Twoją sytuację transportową i znajdujemy miejsca pracy, które dla Ciebie działają.',
                'order' => 12,
                'active' => true,
            ],
            [
                'question_en' => 'What are the career development opportunities?',
                'answer_en' => 'Violetta Home Care Limited is committed to supporting your long-term career growth. We offer clear progression pathways including advancement to senior live-in carer roles with higher pay and more complex cases, specialist positions in dementia care, palliative care, or specific conditions, care coordinator roles supporting other carers, training and mentoring positions, and opportunities in our regional offices in recruitment, quality assurance, or operations. We fund relevant qualifications and provide leadership development programs. Many of our senior staff and managers started as live-in carers and progressed through the organization. We actively promote from within and invest in developing talented, committed carers who want to build long-term careers in care.',
                'question_pl' => 'Jakie są możliwości rozwoju kariery?',
                'answer_pl' => 'Violetta Home Care Limited jest zaangażowany we wspieranie Twojego długoterminowego rozwoju kariery. Oferujemy jasne ścieżki awansu, w tym awans do stanowisk starszych opiekunów domowych z wyższą płacą i bardziej złożonymi przypadkami, stanowiska specjalistyczne w opiece nad osobami z demencją, opiece paliatywnej lub określonych stanach, role koordynatorów opieki wspierających innych opiekunów, stanowiska szkoleniowe i mentorskie oraz możliwości w naszych biurach regionalnych w rekrutacji, zapewnieniu jakości lub operacjach. Finansujemy odpowiednie kwalifikacje i zapewniamy programy rozwoju przywództwa. Wielu naszych starszych pracowników i menedżerów zaczynało jako opiekunowie domowi i rozwijało się przez organizację. Aktywnie promujemy z wewnątrz i inwestujemy w rozwijanie utalentowanych, zaangażowanych opiekunów, którzy chcą budować długoterminowe kariery w opiece.',
                'order' => 13,
                'active' => true,
            ],
            [
                'question_en' => 'What if I need time off for emergencies or illness?',
                'answer_en' => 'We understand that life is unpredictable and emergencies happen. If you become ill during a placement, contact us immediately and we\'ll arrange cover so you can rest and recover. You\'re entitled to statutory sick pay when unwell. For family emergencies or urgent personal matters, we work to arrange emergency cover quickly so you can attend to what\'s important. We have a network of relief carers and support staff for such situations. For planned time off beyond your regular break schedule (weddings, important events, extended travel), discuss this with your care coordinator as early as possible and we\'ll do our best to accommodate your needs while ensuring client care continuity. Your wellbeing matters, and we support you through difficult times.',
                'question_pl' => 'Co się stanie, jeśli będę potrzebować czasu wolnego na wypadek nagłych wypadków lub choroby?',
                'answer_pl' => 'Rozumiemy, że życie jest nieprzewidywalne i zdarzają się nagłe wypadki. Jeśli zachorujesz podczas zlecenia, natychmiast się z nami skontaktuj, a zorganizujemy zastępstwo, abyś mógł odpocząć i wyzdrowieć. Przysługuje Ci ustawowy zasiłek chorobowy, gdy jesteś chory. W przypadku nagłych wypadków rodzinnych lub pilnych spraw osobistych pracujemy, aby szybko zorganizować zastępstwo awaryjne, abyś mógł zająć się tym, co ważne. Mamy sieć opiekunów zastępczych i personelu wsparcia w takich sytuacjach. W przypadku planowanego czasu wolnego poza regularnym harmonogramem przerw (wesela, ważne wydarzenia, dłuższe podróże) omów to ze swoim koordynatorem opieki tak wcześnie, jak to możliwe, a my zrobimy wszystko, co w naszej mocy, aby spełnić Twoje potrzeby, jednocześnie zapewniając ciągłość opieki nad klientem. Twoje dobre samopoczucie ma znaczenie i wspieramy Cię w trudnych czasach.',
                'order' => 14,
                'active' => true,
            ],
            [
                'question_en' => 'Is CQC registration required and will you help me get it?',
                'answer_en' => 'CQC (Care Quality Commission) registration is not required for individual carers - it\'s the care provider organization (Violetta Home Care Limited) that must be CQC registered, and we are fully registered and regularly inspected. However, you will need to complete CQC-compliant training, which we provide free of charge as part of your induction. This training meets all CQC standards and requirements for care workers. We handle all regulatory compliance, inspections, and quality assurance processes. You\'ll be working under our CQC registration, giving clients and their families confidence in the quality of care provided. All you need to focus on is delivering compassionate, professional care - we take care of all the regulatory requirements.',
                'question_pl' => 'Czy wymagana jest rejestracja CQC i czy pomożecie mi ją uzyskać?',
                'answer_pl' => 'Rejestracja CQC (Care Quality Commission) nie jest wymagana dla poszczególnych opiekunów - to organizacja dostawcy opieki (Violetta Home Care Limited) musi być zarejestrowana w CQC, a my jesteśmy w pełni zarejestrowani i regularnie kontrolowani. Jednak będziesz musiał ukończyć szkolenie zgodne z CQC, które zapewniamy bezpłatnie w ramach Twojego wprowadzenia. To szkolenie spełnia wszystkie standardy i wymagania CQC dla pracowników opieki. Zajmujemy się wszystkimi procesami zgodności z przepisami, kontrolami i zapewnieniem jakości. Będziesz pracować pod naszą rejestracją CQC, dając klientom i ich rodzinom pewność co do jakości świadczonej opieki. Wszystko, na czym musisz się skupić, to świadczenie współczującej, profesjonalnej opieki - my zajmujemy się wszystkimi wymogami regulacyjnymi.',
                'order' => 15,
                'active' => true,
            ],
        ];

        foreach ($faqs as $faq) {
            DB::table('faqs')->insert([
                'question_en' => $faq['question_en'],
                'answer_en' => $faq['answer_en'],
                'question_pl' => $faq['question_pl'],
                'answer_pl' => $faq['answer_pl'],
                'order' => $faq['order'],
                'active' => $faq['active'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
