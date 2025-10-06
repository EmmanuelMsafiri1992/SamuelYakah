-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2025 at 02:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helping_hands`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `title_pl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_pl` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `title_en`, `description_en`, `title_pl`, `description_pl`, `icon`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Competitive Weekly Pay', 'Earn £800-£1,200 per week depending on experience, qualifications, and location. We offer some of the best rates in the live-in care industry with transparent pay structures and regular reviews. Your hard work and dedication are recognized and rewarded.', 'Konkurencyjne Wynagrodzenie Tygodniowe', 'Zarabiaj £800-£1,200 tygodniowo w zależności od doświadczenia, kwalifikacji i lokalizacji. Oferujemy jedne z najlepszych stawek w branży opieki domowej z przejrzystymi strukturami wynagrodzeń i regularnymi przeglądami. Twoja ciężka praca i oddanie są doceniane i nagradzane.', 'currency-pound', 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Free Accommodation & All Meals', 'Live rent-free in comfortable, private accommodation with your own bedroom and often en-suite facilities. All meals are provided throughout your assignment, allowing you to save significantly while earning. Enjoy quality living spaces that feel like a home away from home.', 'Bezpłatne Zakwaterowanie i Wszystkie Posiłki', 'Mieszkaj bez czynszu w komfortowym, prywatnym zakwaterowaniu z własną sypialnią i często łazienką en-suite. Wszystkie posiłki są zapewnione podczas twojego zlecenia, pozwalając na znaczne oszczędności podczas zarabiania. Ciesz się jakościowymi przestrzeniami mieszkalnymi, które przypominają dom z dala od domu.', 'home', 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'Comprehensive CQC-Registered Training', 'Receive full CQC-registered training and professional certification at absolutely no cost to you. Our comprehensive program covers personal care, medication management, dementia care, first aid, safeguarding, and specialized techniques. Gain recognized qualifications including NVQ Level 2 and 3 in Health and Social Care.', 'Kompleksowe Szkolenia Zarejestrowane przez CQC', 'Otrzymaj pełne szkolenie zarejestrowane przez CQC i profesjonalną certyfikację bez żadnych kosztów. Nasz kompleksowy program obejmuje opiekę osobistą, zarządzanie lekami, opiekę nad osobami z demencją, pierwszą pomoc, ochronę i specjalistyczne techniki. Zdobądź uznane kwalifikacje, w tym NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej.', 'academic-cap', 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'Healthcare & Wellbeing Benefits', 'Access to healthcare benefits including occupational health support, counseling services, and wellbeing programs. We care about your physical and mental health as much as you care for our clients. Regular health checks and professional support are available to all carers.', 'Świadczenia Zdrowotne i Dobrego Samopoczucia', 'Dostęp do świadczeń zdrowotnych, w tym wsparcia zdrowia zawodowego, usług doradczych i programów dobrego samopoczucia. Dbamy o Twoje zdrowie fizyczne i psychiczne tak samo, jak Ty dbasz o naszych klientów. Regularne kontrole zdrowotne i profesjonalne wsparcie są dostępne dla wszystkich opiekunów.', 'shield-check', 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Clear Career Progression Pathways', 'Build a rewarding long-term career with transparent progression opportunities. Advance from live-in carer to senior carer, specialist positions, care coordinator, or training roles. We invest in your professional development with mentorship programs, advanced qualifications, and leadership training.', 'Jasne Ścieżki Rozwoju Kariery', 'Zbuduj satysfakcjonującą długoterminową karierę z przejrzystymi możliwościami awansu. Awansuj z opiekuna domowego do starszego opiekuna, stanowisk specjalistycznych, koordynatora opieki lub ról szkoleniowych. Inwestujemy w Twój rozwój zawodowy poprzez programy mentorskie, zaawansowane kwalifikacje i szkolenia przywódcze.', 'chart-bar', 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'Flexible Working Schedules', 'Choose working patterns that suit your lifestyle and personal commitments. Options include 2 weeks on/1 week off, 4 weeks on/2 weeks off, or custom arrangements. Your time off is genuinely yours - return home, travel, or relax knowing your next placement is arranged around your availability.', 'Elastyczne Harmonogramy Pracy', 'Wybierz wzorce pracy odpowiadające Twojemu stylowi życia i osobistym zobowiązaniom. Opcje obejmują 2 tygodnie pracy/1 tydzień wolnego, 4 tygodnie pracy/2 tygodnie wolnego lub niestandardowe ustalenia. Twój czas wolny jest naprawdę Twój - wróć do domu, podróżuj lub odpocznij, wiedząc, że Twoje następne miejsce pracy jest zorganizowane zgodnie z Twoją dostępnością.', 'clock', 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, '24/7 Dedicated Support Network', 'Never feel alone in your role. Access round-the-clock support from experienced care coordinators, clinical advisors, and dedicated support teams. Join peer support groups, attend regular carer meetups, and benefit from ongoing guidance whenever you need it - day or night.', 'Dedykowana Sieć Wsparcia 24/7', 'Nigdy nie czuj się samotny w swojej roli. Uzyskaj całodobowe wsparcie od doświadczonych koordynatorów opieki, doradców klinicznych i dedykowanych zespołów wsparcia. Dołącz do grup wsparcia rówieśniczego, uczestniczyć w regularnych spotkaniach opiekunów i korzystaj z bieżących wskazówek, kiedy tylko potrzebujesz - w dzień i w nocy.', 'phone', 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'Full Travel Expenses Covered', 'All travel costs between assignments are completely covered by us. Whether by flight, train, coach, or personal vehicle (mileage reimbursement), you won\'t be out of pocket. We handle all arrangements to ensure your journey between placements is stress-free and fully funded.', 'Pełne Pokrycie Kosztów Podróży', 'Wszystkie koszty podróży między zleceniami są całkowicie pokryte przez nas. Bez względu na to, czy lotem, pociągiem, autokarem czy pojazdem osobistym (zwrot kosztów przejazdu), nie będziesz nic płacić. Zajmujemy się wszystkimi ustaleniami, aby zapewnić, że Twoja podróż między miejscami pracy jest bezstresowa i w pełni sfinansowana.', 'truck', 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'Paid Annual Leave & Holidays', 'Enjoy statutory paid holiday entitlement in addition to your regular time off between assignments. Plan holidays and breaks with guaranteed income, ensuring you maintain a healthy work-life balance. Bank holidays and special occasions are recognized and compensated.', 'Płatny Urlop Roczny i Święta', 'Ciesz się ustawowym płatnym urlopem wypoczynkowym oprócz regularnego czasu wolnego między zleceniami. Planuj wakacje i przerwy z gwarantowanym dochodem, zapewniając utrzymanie zdrowej równowagi między pracą a życiem. Dni ustawowo wolne od pracy i specjalne okazje są uznawane i kompensowane.', 'calendar', 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'Continuous Professional Development', 'Access ongoing learning opportunities with regular refresher courses, advanced training modules, and specialist certifications. Attend workshops, conferences, and seminars to expand your expertise. We support your passion for learning with funded courses and dedicated study time.', 'Ciągły Rozwój Zawodowy', 'Uzyskaj dostęp do bieżących możliwości uczenia się dzięki regularnym kursom odświeżającym, zaawansowanym modułom szkoleniowym i certyfikatom specjalistycznym. Uczestniczyć w warsztatach, konferencjach i seminariach, aby poszerzyć swoją wiedzę. Wspieramy Twoją pasję do nauki finansowanymi kursami i dedykowanym czasem nauki.', 'book-open', 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'Work-Life Balance Guaranteed', 'We understand the importance of personal time. Enjoy structured breaks during assignments, regular scheduled time off, and the flexibility to maintain relationships and pursue interests outside work. Our scheduling respects your need for rest, recreation, and quality time with loved ones.', 'Gwarantowana Równowaga Między Pracą a Życiem', 'Rozumiemy znaczenie czasu osobistego. Ciesz się ustrukturyzowanymi przerwami podczas zleceń, regularnym zaplanowanym czasem wolnym i elastycznością w utrzymywaniu relacji i realizowaniu zainteresowań poza pracą. Nasz harmonogram szanuje Twoją potrzebę odpoczynku, rekreacji i czasu jakości z bliskimi.', 'sun', 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Make a Meaningful Impact', 'Experience the profound satisfaction of making a genuine difference every single day. Provide one-on-one care that enables clients to live independently with dignity in their own homes. Build meaningful relationships, witness positive changes, and know your work truly matters to the people you support.', 'Wprowadź Znaczący Wpływ', 'Doświadcz głębokiej satysfakcji z wprowadzania prawdziwej zmiany każdego dnia. Zapewnij opiekę jeden na jeden, która umożliwia klientom samodzielne życie z godnością we własnych domach. Buduj znaczące relacje, obserwuj pozytywne zmiany i wiedz, że Twoja praca naprawdę ma znaczenie dla ludzi, których wspierasz.', 'heart', 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_pl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_pl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_en`, `answer_en`, `question_pl`, `answer_pl`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'What qualifications do I need to become a live-in carer?', 'While formal qualifications are not always required, we value compassion, reliability, patience, and a genuine desire to help others. The essential requirements are: basic English communication skills, right to work in the UK, willingness to undergo an enhanced DBS check, and physical ability to assist with mobility and personal care. We provide comprehensive CQC-registered training for all new carers, including opportunities to gain NVQ Level 2 or 3 in Health and Social Care at no cost. Previous care experience is beneficial but not mandatory - we welcome career changers and those new to care who have the right attitude and commitment.', 'Jakie kwalifikacje są potrzebne, aby zostać opiekunem domowym?', 'Chociaż formalne kwalifikacje nie zawsze są wymagane, cenimy współczucie, niezawodność, cierpliwość i szczere pragnienie pomocy innym. Podstawowe wymagania to: podstawowe umiejętności komunikacji w języku angielskim, prawo do pracy w Wielkiej Brytanii, chęć poddania się rozszerzonemu sprawdzeniu DBS i fizyczna zdolność do pomocy w mobilności i opiece osobistej. Zapewniamy kompleksowe szkolenia zarejestrowane przez CQC dla wszystkich nowych opiekunów, w tym możliwości zdobycia NVQ Level 2 lub 3 w zakresie zdrowia i opieki społecznej bez żadnych kosztów. Poprzednie doświadczenie w opiece jest korzystne, ale nie obowiązkowe - witamy osoby zmieniające karierę i nowe w opiece, które mają odpowiednie nastawienie i zaangażowanie.', 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Am I employed or self-employed as a live-in carer?', 'At Helping Hands, you are employed directly by us on a PAYE basis, not self-employed. This means you receive all employment benefits including holiday pay, sick pay, pension contributions, and full tax and National Insurance contributions handled by us. You\'re protected by employment law, receive regular payslips, and have the security of being a valued employee. This is different from agency work and provides much greater stability and benefits.', 'Czy jestem zatrudniony czy samozatrudniony jako opiekun domowy?', 'W Helping Hands jesteś zatrudniony bezpośrednio przez nas na zasadzie PAYE, a nie samozatrudniony. Oznacza to, że otrzymujesz wszystkie świadczenia pracownicze, w tym wynagrodzenie urlopowe, zasiłek chorobowy, składki emerytalne oraz pełne składki podatkowe i ubezpieczenia społecznego obsługiwane przez nas. Jesteś chroniony przez prawo pracy, otrzymujesz regularne paski wynagrodzeń i masz bezpieczeństwo bycia cenionym pracownikiem. To różni się od pracy agencyjnej i zapewnia znacznie większą stabilność i korzyści.', 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'How much time off do I get between assignments?', 'We offer flexible working patterns designed around your lifestyle and personal commitments. The most popular arrangements are 2 weeks on/1 week off or 4 weeks on/2 weeks off, but we can discuss custom patterns that work for you. During your time off, you are completely free to return home, travel, spend time with family, or relax as you wish. Your time off is genuinely yours - we don\'t contact you during breaks unless you request us to. We plan your next assignment around your availability and always give you advance notice of upcoming placements.', 'Ile czasu wolnego otrzymuję między zleceniami?', 'Oferujemy elastyczne wzorce pracy zaprojektowane wokół Twojego stylu życia i osobistych zobowiązań. Najpopularniejsze układy to 2 tygodnie pracy/1 tydzień wolnego lub 4 tygodnie pracy/2 tygodnie wolnego, ale możemy omówić niestandardowe wzorce, które Ci odpowiadają. Podczas czasu wolnego jesteś całkowicie wolny, aby wrócić do domu, podróżować, spędzić czas z rodziną lub odpocząć, jak chcesz. Twój czas wolny jest naprawdę Twój - nie kontaktujemy się z Tobą podczas przerw, chyba że o to poprosisz. Planujemy Twoje następne zlecenie zgodnie z Twoją dostępnością i zawsze informujemy z wyprzedzeniem o nadchodzących miejscach pracy.', 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'What does a typical day look like as a live-in carer?', 'Each day varies depending on your client\'s individual needs and preferences, making the role interesting and varied. A typical day might include: helping with morning routines like washing and dressing; preparing and sharing meals together; administering medication according to prescribed schedules; light housekeeping tasks; accompanying the client on shopping trips or appointments; supporting hobbies and interests; providing companionship and conversation; and assisting with evening routines. You\'ll have structured breaks throughout the day, typically 2-3 hours of personal time in the afternoon, and a full 8 hours of uninterrupted sleep at night in your private room. The role focuses on enabling independence and maintaining dignity, not doing everything for the client. You work alongside them, supporting their abilities while assisting where needed.', 'Jak wygląda typowy dzień jako opiekun domowy?', 'Każdy dzień różni się w zależności od indywidualnych potrzeb i preferencji klienta, dzięki czemu rola jest interesująca i zróżnicowana. Typowy dzień może obejmować: pomoc w porannych czynnościach, takich jak mycie i ubieranie; przygotowywanie i dzielenie posiłków razem; podawanie leków zgodnie z przepisanymi harmonogramami; lekkie zadania domowe; towarzyszenie klientowi podczas zakupów lub wizyt; wspieranie hobby i zainteresowań; zapewnianie towarzystwa i rozmowy; pomoc w wieczornych czynnościach. Będziesz mieć ustrukturyzowane przerwy w ciągu dnia, zazwyczaj 2-3 godziny czasu osobistego po południu i pełne 8 godzin nieprzerwanego snu w nocy w swoim prywatnym pokoju. Rola koncentruje się na umożliwieniu niezależności i utrzymaniu godności, a nie robieniu wszystkiego za klienta. Pracujesz razem z nimi, wspierając ich umiejętności, jednocześnie pomagając tam, gdzie jest to potrzebne.', 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Will I have my own room and privacy?', 'Absolutely yes. You will always have your own private bedroom in the client\'s home, and we never place two carers in one room. Most placements offer en-suite bathroom facilities, though this isn\'t always possible in every home. You\'ll have full access to household amenities including kitchen, living areas, laundry facilities, and often WiFi. Your room is your private space to relax during breaks and rest at night. You\'re entitled to structured breaks during the day, personal time in the afternoon, and a guaranteed 8 hours of uninterrupted sleep each night. We inspect all accommodations before placement to ensure they meet our quality and comfort standards.', 'Czy będę mieć własny pokój i prywatność?', 'Absolutnie tak. Zawsze będziesz mieć własną prywatną sypialnię w domu klienta i nigdy nie umieszczamy dwóch opiekunów w jednym pokoju. Większość miejsc oferuje łazienkę en-suite, chociaż nie zawsze jest to możliwe w każdym domu. Będziesz mieć pełny dostęp do domowych udogodnień, w tym kuchni, salonów, pralni i często WiFi. Twój pokój jest Twoją prywatną przestrzenią do relaksu podczas przerw i odpoczynku w nocy. Przysługują Ci ustrukturyzowane przerwy w ciągu dnia, czas osobisty po południu i gwarantowane 8 godzin nieprzerwanego snu każdej nocy. Sprawdzamy wszystkie zakwaterowania przed umieszczeniem, aby upewnić się, że spełniają nasze standardy jakości i komfortu.', 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'What support will I receive while on assignment?', 'Comprehensive support is a cornerstone of working with Helping Hands. You\'ll have access to 24/7 support from experienced care coordinators who understand the challenges and rewards of live-in care. Our clinical team provides expert advice on medical and care-related questions. We conduct regular check-in calls to ensure everything is going well and you have everything you need. You\'ll join peer support groups where you can connect with fellow carers, share experiences, and build friendships. We offer ongoing training opportunities, annual refresher courses, and access to specialist advice when needed. If any issues arise - whether practical, medical, or personal - you can contact us anytime, day or night, for guidance, emergency support, or just to talk through concerns. Regular reviews ensure both you and your client are satisfied with the arrangement.', 'Jakie wsparcie otrzymam podczas zlecenia?', 'Kompleksowe wsparcie jest kamieniem węgielnym pracy z Helping Hands. Będziesz mieć dostęp do całodobowego wsparcia od doświadczonych koordynatorów opieki, którzy rozumieją wyzwania i nagrody opieki domowej. Nasz zespół kliniczny zapewnia fachowe porady w kwestiach medycznych i związanych z opieką. Prowadzimy regularne rozmowy kontrolne, aby upewnić się, że wszystko idzie dobrze i masz wszystko, czego potrzebujesz. Dołączysz do grup wsparcia rówieśniczego, gdzie możesz połączyć się z innymi opiekunami, dzielić się doświadczeniami i budować przyjaźnie. Oferujemy bieżące możliwości szkoleniowe, coroczne kursy odświeżające i dostęp do porad specjalistycznych, gdy jest to potrzebne. Jeśli pojawią się jakiekolwiek problemy - czy to praktyczne, medyczne czy osobiste - możesz się z nami skontaktować w dowolnym momencie, w dzień lub w nocy, w celu uzyskania wskazówek, pomocy awaryjnej lub po prostu omówienia obaw. Regularne przeglądy zapewniają, że zarówno Ty, jak i Twój klient jesteście zadowoleni z układu.', 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'Can I choose where I work and who I care for?', 'Yes, you have significant input in your placements. During your induction and throughout your career with us, we discuss your preferences in detail including preferred locations (urban/rural, specific regions, proximity to your home), types of care you\'re comfortable with (dementia care, physical disabilities, general elderly care, etc.), working patterns that suit your lifestyle, and any specific requirements like pets, non-smoking homes, or dietary preferences. While we can\'t guarantee every single preference, we work diligently to match you with clients and locations that align with your skills, experience, and personal preferences. You\'ll always have the opportunity to speak with the client or their family, learn about their needs and home environment, and ask questions before accepting any assignment. You\'re never pressured to accept a placement you\'re uncomfortable with.', 'Czy mogę wybrać, gdzie pracuję i o kogo się opiekuję?', 'Tak, masz znaczący wpływ na swoje miejsca pracy. Podczas Twojego wprowadzenia i przez całą karierę z nami szczegółowo omawiamy Twoje preferencje, w tym preferowane lokalizacje (miejskie/wiejskie, określone regiony, bliskość Twojego domu), rodzaje opieki, z którymi czujesz się komfortowo (opieka nad osobami z demencją, niepełnosprawności fizyczne, ogólna opieka nad osobami starszymi itp.), wzorce pracy odpowiadające Twojemu stylowi życia oraz wszelkie specyficzne wymagania, takie jak zwierzęta domowe, domy dla niepalących lub preferencje dietetyczne. Chociaż nie możemy zagwarantować każdej preferencji, ciężko pracujemy, aby dopasować Cię do klientów i lokalizacji zgodnych z Twoimi umiejętnościami, doświadczeniem i osobistymi preferencjami. Zawsze będziesz mieć możliwość rozmowy z klientem lub jego rodziną, poznania ich potrzeb i środowiska domowego oraz zadawania pytań przed przyjęciem jakiegokolwiek zlecenia. Nigdy nie jesteś zmuszany do przyjęcia miejsca pracy, z którym czujesz się niekomfortowo.', 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'How much will I earn as a live-in carer?', 'Live-in carers at Helping Hands earn between £800 and £1,200 per week, depending on your experience, qualifications, location, and the specific care needs of the client. This competitive rate is paid weekly via PAYE with all taxes and National Insurance handled by us. Remember, your accommodation and all meals are provided free of charge, meaning your salary is genuinely disposable income. You can save significantly compared to other jobs. You also receive statutory paid holiday entitlement, sick pay, and pension contributions. Many of our carers save substantial amounts each year due to the lack of rent, utility bills, and daily living expenses. We conduct regular pay reviews and recognize experience and additional qualifications with salary increases.', 'Ile zarobię jako opiekun domowy?', 'Opiekunowie domowi w Helping Hands zarabiają od £800 do £1,200 tygodniowo, w zależności od Twojego doświadczenia, kwalifikacji, lokalizacji i specyficznych potrzeb opiekuńczych klienta. Ta konkurencyjna stawka jest wypłacana tygodniowo za pośrednictwem PAYE z wszystkimi podatkami i ubezpieczeniem społecznym obsługiwanym przez nas. Pamiętaj, że Twoje zakwaterowanie i wszystkie posiłki są zapewniane bezpłatnie, co oznacza, że Twoja pensja jest naprawdę dochodem do dyspozycji. Możesz zaoszczędzić znacznie w porównaniu z innymi pracami. Otrzymujesz również ustawowe płatne uprawnienie do urlopu, zasiłek chorobowy i składki emerytalne. Wielu naszych opiekunów oszczędza znaczne kwoty każdego roku ze względu na brak czynszu, rachunków za media i codziennych kosztów utrzymania. Prowadzimy regularne przeglądy wynagrodzeń i uznajemy doświadczenie i dodatkowe kwalifikacje podwyżkami płac.', 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'What training is provided and is there a cost?', 'All training at Helping Hands is completely free - we invest in your development at no cost to you. Every new carer receives comprehensive, CQC-registered induction training covering essential care skills, health and safety, safeguarding, first aid, medication administration, infection control, dementia awareness, and much more. This paid training typically takes place over several days before your first placement. Throughout your career with us, you\'ll receive ongoing training including annual mandatory refresher courses, specialist training for specific care needs (Parkinson\'s, stroke recovery, diabetes management, etc.), and opportunities to gain recognized qualifications like NVQ Level 2 and 3 in Health and Social Care. We also offer mentorship programs, advanced care training, and pathways to leadership roles. All training is paid time, and we cover any travel or accommodation costs if required.', 'Jakie szkolenie jest zapewniane i czy wiąże się z kosztami?', 'Wszystkie szkolenia w Helping Hands są całkowicie bezpłatne - inwestujemy w Twój rozwój bez żadnych kosztów dla Ciebie. Każdy nowy opiekun otrzymuje kompleksowe szkolenie wprowadzające zarejestrowane przez CQC obejmujące niezbędne umiejętności opiekuńcze, zdrowie i bezpieczeństwo, ochronę, pierwszą pomoc, podawanie leków, kontrolę infekcji, świadomość demencji i wiele więcej. To płatne szkolenie zazwyczaj odbywa się przez kilka dni przed Twoim pierwszym zleceniem. Przez całą karierę z nami będziesz otrzymywać bieżące szkolenia, w tym coroczne obowiązkowe kursy odświeżające, szkolenia specjalistyczne dla specyficznych potrzeb opiekuńczych (Parkinson, powrót do zdrowia po udarze, zarządzanie cukrzycą itp.) oraz możliwości zdobycia uznanych kwalifikacji, takich jak NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej. Oferujemy również programy mentorskie, zaawansowane szkolenia opiekuńcze i ścieżki do ról przywódczych. Całe szkolenie jest płatnym czasem i pokrywamy wszelkie koszty podróży lub zakwaterowania, jeśli jest to wymagane.', 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'How quickly can I start working after applying?', 'The timeline from application to your first placement typically takes 2-4 weeks, though it can be faster if you already have an enhanced DBS certificate and relevant care qualifications. The process includes: initial application review (1-2 days), telephone or video interview (usually within a week), face-to-face interview and assessment, reference checks (1-2 weeks), enhanced DBS check (1-3 weeks, can run concurrently), right to work verification, comprehensive paid induction training (2-5 days), and finally matching with your first client and placement. We keep you fully informed at every stage and work to get you started as quickly as possible while ensuring all necessary checks and training are thorough. If you\'re currently working elsewhere, we\'re happy to schedule around your notice period. Some carers with existing qualifications and clearances have started within a week.', 'Jak szybko mogę rozpocząć pracę po aplikacji?', 'Czas od aplikacji do Twojego pierwszego zlecenia zazwyczaj wynosi 2-4 tygodnie, chociaż może być szybszy, jeśli już posiadasz rozszerzony certyfikat DBS i odpowiednie kwalifikacje opiekuńcze. Proces obejmuje: wstępny przegląd aplikacji (1-2 dni), rozmowę telefoniczną lub wideo (zazwyczaj w ciągu tygodnia), osobistą rozmowę kwalifikacyjną i ocenę, sprawdzanie referencji (1-2 tygodnie), rozszerzone sprawdzenie DBS (1-3 tygodnie, może przebiegać równocześnie), weryfikację prawa do pracy, kompleksowe płatne szkolenie wprowadzające (2-5 dni) i wreszcie dopasowanie do Twojego pierwszego klienta i miejsca pracy. Informujemy Cię na każdym etapie i pracujemy, aby rozpocząć tak szybko, jak to możliwe, jednocześnie zapewniając, że wszystkie niezbędne sprawdzenia i szkolenia są dokładne. Jeśli obecnie pracujesz gdzie indziej, chętnie zaplanujemy to zgodnie z Twoim okresem wypowiedzenia. Niektórzy opiekunowie z istniejącymi kwalifikacjami i zezwoleniami rozpoczęli w ciągu tygodnia.', 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'What happens if I don\'t get along with a client or want to change placement?', 'Your comfort and job satisfaction are important to us. While we carefully match carers and clients to ensure compatibility, we understand that occasionally placements don\'t work out as expected. If you\'re experiencing difficulties, contact your care coordinator immediately - we can often resolve issues through communication and support. If a placement genuinely isn\'t right for you, we will work to find you an alternative placement as quickly as possible. You\'re never expected to remain in a situation where you feel uncomfortable, unsafe, or unhappy. We conduct regular reviews during placements to catch and address any concerns early. Many carers stay with the same client for months or even years, building wonderful relationships, but when change is needed, we handle it professionally and promptly.', 'Co się stanie, jeśli nie dogaduję się z klientem lub chcę zmienić miejsce pracy?', 'Twój komfort i satysfakcja z pracy są dla nas ważne. Chociaż starannie dopasowujemy opiekunów i klientów, aby zapewnić kompatybilność, rozumiemy, że czasami miejsca pracy nie sprawdzają się zgodnie z oczekiwaniami. Jeśli doświadczasz trudności, natychmiast skontaktuj się ze swoim koordynatorem opieki - często możemy rozwiązać problemy poprzez komunikację i wsparcie. Jeśli miejsce pracy naprawdę nie jest dla Ciebie odpowiednie, będziemy pracować, aby znaleźć Ci alternatywne miejsce pracy tak szybko, jak to możliwe. Nigdy nie oczekuje się, że pozostaniesz w sytuacji, w której czujesz się niekomfortowo, niebezpiecznie lub nieszczęśliwy. Prowadzimy regularne przeglądy podczas miejsc pracy, aby wcześnie wyłapać i rozwiązać wszelkie obawy. Wielu opiekunów pozostaje z tym samym klientem przez miesiące, a nawet lata, budując wspaniałe relacje, ale gdy zmiana jest potrzebna, obsługujemy to profesjonalnie i szybko.', 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Do I need to have a driving license?', 'A driving license is not essential for all live-in care positions, but it can significantly increase your placement opportunities. Many clients live in rural or suburban areas where having a car is beneficial for shopping trips, appointments, and social outings. If you do drive, you can use the client\'s vehicle (with proper insurance arranged) or your own car with mileage expenses reimbursed for client-related journeys. However, we also have many placements in urban areas with good public transport, or where clients have family members who assist with transport, or where clients don\'t require regular outings. During the matching process, we consider your transport situation and find placements that work for you.', 'Czy muszę mieć prawo jazdy?', 'Prawo jazdy nie jest niezbędne dla wszystkich stanowisk opieki domowej, ale może znacznie zwiększyć Twoje możliwości zatrudnienia. Wielu klientów mieszka na obszarach wiejskich lub podmiejskich, gdzie posiadanie samochodu jest korzystne dla wycieczek na zakupy, wizyt i wyjść towarzyskich. Jeśli prowadzisz, możesz używać pojazdu klienta (z odpowiednim ubezpieczeniem) lub własnego samochodu ze zwrotem kosztów przejazdu za podróże związane z klientem. Jednak mamy również wiele miejsc pracy w obszarach miejskich z dobrym transportem publicznym lub gdzie klienci mają członków rodziny, którzy pomagają w transporcie, lub gdzie klienci nie wymagają regularnych wyjazdów. Podczas procesu dopasowywania uwzględniamy Twoją sytuację transportową i znajdujemy miejsca pracy, które dla Ciebie działają.', 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'What are the career development opportunities?', 'Helping Hands is committed to supporting your long-term career growth. We offer clear progression pathways including advancement to senior live-in carer roles with higher pay and more complex cases, specialist positions in dementia care, palliative care, or specific conditions, care coordinator roles supporting other carers, training and mentoring positions, and opportunities in our regional offices in recruitment, quality assurance, or operations. We fund relevant qualifications and provide leadership development programs. Many of our senior staff and managers started as live-in carers and progressed through the organization. We actively promote from within and invest in developing talented, committed carers who want to build long-term careers in care.', 'Jakie są możliwości rozwoju kariery?', 'Helping Hands jest zaangażowany we wspieranie Twojego długoterminowego rozwoju kariery. Oferujemy jasne ścieżki awansu, w tym awans do stanowisk starszych opiekunów domowych z wyższą płacą i bardziej złożonymi przypadkami, stanowiska specjalistyczne w opiece nad osobami z demencją, opiece paliatywnej lub określonych stanach, role koordynatorów opieki wspierających innych opiekunów, stanowiska szkoleniowe i mentorskie oraz możliwości w naszych biurach regionalnych w rekrutacji, zapewnieniu jakości lub operacjach. Finansujemy odpowiednie kwalifikacje i zapewniamy programy rozwoju przywództwa. Wielu naszych starszych pracowników i menedżerów zaczynało jako opiekunowie domowi i rozwijało się przez organizację. Aktywnie promujemy z wewnątrz i inwestujemy w rozwijanie utalentowanych, zaangażowanych opiekunów, którzy chcą budować długoterminowe kariery w opiece.', 13, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'What if I need time off for emergencies or illness?', 'We understand that life is unpredictable and emergencies happen. If you become ill during a placement, contact us immediately and we\'ll arrange cover so you can rest and recover. You\'re entitled to statutory sick pay when unwell. For family emergencies or urgent personal matters, we work to arrange emergency cover quickly so you can attend to what\'s important. We have a network of relief carers and support staff for such situations. For planned time off beyond your regular break schedule (weddings, important events, extended travel), discuss this with your care coordinator as early as possible and we\'ll do our best to accommodate your needs while ensuring client care continuity. Your wellbeing matters, and we support you through difficult times.', 'Co się stanie, jeśli będę potrzebować czasu wolnego na wypadek nagłych wypadków lub choroby?', 'Rozumiemy, że życie jest nieprzewidywalne i zdarzają się nagłe wypadki. Jeśli zachorujesz podczas zlecenia, natychmiast się z nami skontaktuj, a zorganizujemy zastępstwo, abyś mógł odpocząć i wyzdrowieć. Przysługuje Ci ustawowy zasiłek chorobowy, gdy jesteś chory. W przypadku nagłych wypadków rodzinnych lub pilnych spraw osobistych pracujemy, aby szybko zorganizować zastępstwo awaryjne, abyś mógł zająć się tym, co ważne. Mamy sieć opiekunów zastępczych i personelu wsparcia w takich sytuacjach. W przypadku planowanego czasu wolnego poza regularnym harmonogramem przerw (wesela, ważne wydarzenia, dłuższe podróże) omów to ze swoim koordynatorem opieki tak wcześnie, jak to możliwe, a my zrobimy wszystko, co w naszej mocy, aby spełnić Twoje potrzeby, jednocześnie zapewniając ciągłość opieki nad klientem. Twoje dobre samopoczucie ma znaczenie i wspieramy Cię w trudnych czasach.', 14, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'Is CQC registration required and will you help me get it?', 'CQC (Care Quality Commission) registration is not required for individual carers - it\'s the care provider organization (Helping Hands) that must be CQC registered, and we are fully registered and regularly inspected. However, you will need to complete CQC-compliant training, which we provide free of charge as part of your induction. This training meets all CQC standards and requirements for care workers. We handle all regulatory compliance, inspections, and quality assurance processes. You\'ll be working under our CQC registration, giving clients and their families confidence in the quality of care provided. All you need to focus on is delivering compassionate, professional care - we take care of all the regulatory requirements.', 'Czy wymagana jest rejestracja CQC i czy pomożecie mi ją uzyskać?', 'Rejestracja CQC (Care Quality Commission) nie jest wymagana dla poszczególnych opiekunów - to organizacja dostawcy opieki (Helping Hands) musi być zarejestrowana w CQC, a my jesteśmy w pełni zarejestrowani i regularnie kontrolowani. Jednak będziesz musiał ukończyć szkolenie zgodne z CQC, które zapewniamy bezpłatnie w ramach Twojego wprowadzenia. To szkolenie spełnia wszystkie standardy i wymagania CQC dla pracowników opieki. Zajmujemy się wszystkimi procesami zgodności z przepisami, kontrolami i zapewnieniem jakości. Będziesz pracować pod naszą rejestracją CQC, dając klientom i ich rodzinom pewność co do jakości świadczonej opieki. Wszystko, na czym musisz się skupić, to świadczenie współczującej, profesjonalnej opieki - my zajmujemy się wszystkimi wymogami regulacyjnymi.', 15, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `qualifications` text COLLATE utf8mb4_unicode_ci,
  `has_right_to_work` tinyint(1) NOT NULL DEFAULT '0',
  `has_driving_license` tinyint(1) NOT NULL DEFAULT '0',
  `cv_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_06_102458_create_faqs_table', 1),
(5, '2025_10_06_102458_create_sections_table', 1),
(6, '2025_10_06_102459_create_benefits_table', 1),
(7, '2025_10_06_102459_create_job_applications_table', 1),
(8, '2025_10_06_102459_create_section_translations_table', 1),
(9, '2025_10_06_102459_create_training_modules_table', 1),
(10, '2025_10_06_102500_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `key`, `type`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'hero', 'hero', 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'job_search', 'job_search', 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'benefits', 'benefits', 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'duties', 'duties', 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'training', 'training', 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'testimonials', 'testimonials', 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'faq', 'faq', 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'application_process', 'application_process', 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `section_translations`
--

CREATE TABLE `section_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_translations`
--

INSERT INTO `section_translations` (`id`, `section_id`, `locale`, `title`, `content`, `subtitle`, `meta`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Join Helping Hands - Start Your Rewarding Career in Live-In Care', 'Welcome to Helping Hands, where compassionate care meets rewarding careers. Join our community of dedicated care professionals across the UK and provide personalized, one-on-one care that truly matters. We offer comprehensive CQC-registered training, competitive pay (£800-£1,200/week), free accommodation and meals, healthcare benefits, and flexible working patterns designed around your life. Whether you\'re an experienced carer or new to the profession, we\'ll support you every step of the way.', 'Make a real difference in people\'s lives while building a fulfilling career with excellent benefits', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 1, 'pl', 'Dołącz do Helping Hands - Rozpocznij Satysfakcjonującą Karierę w Opiece Domowej', 'Witamy w Helping Hands, gdzie współczująca opieka spotyka się z satysfakcjonującymi karierami. Dołącz do naszej społeczności oddanych profesjonalistów opieki w całej Wielkiej Brytanii i zapewnij spersonalizowaną opiekę jeden na jeden, która naprawdę ma znaczenie. Oferujemy kompleksowe szkolenia zarejestrowane przez CQC, konkurencyjne wynagrodzenie (£800-£1,200/tydzień), bezpłatne zakwaterowanie i wyżywienie, świadczenia zdrowotne oraz elastyczne warunki pracy zaprojektowane wokół Twojego życia. Bez względu na to, czy jesteś doświadczonym opiekunem, czy nowym w zawodzie, będziemy Cię wspierać na każdym kroku.', 'Wprowadź prawdziwą zmianę w życiu ludzi, budując satysfakcjonującą karierę z doskonałymi benefitami', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 2, 'en', 'Find Your Perfect Live-In Care Position', 'Search our live-in care opportunities by location, care type, or working pattern. We have positions available throughout England, Scotland, Wales, and Northern Ireland. Filter by your preferences including urban or rural settings, client needs, and schedule flexibility. Our matching system ensures you find a role that suits your skills, experience, and lifestyle. New positions are added daily - find your ideal placement today.', 'Browse available opportunities across the UK', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 2, 'pl', 'Znajdź Swoją Idealną Pozycję w Opiece Domowej', 'Wyszukaj nasze możliwości opieki domowej według lokalizacji, rodzaju opieki lub wzorca pracy. Mamy stanowiska dostępne w całej Anglii, Szkocji, Walii i Irlandii Północnej. Filtruj według swoich preferencji, w tym ustawień miejskich lub wiejskich, potrzeb klienta i elastyczności harmonogramu. Nasz system dopasowywania zapewnia, że znajdziesz rolę odpowiadającą Twoim umiejętnościom, doświadczeniu i stylowi życia. Nowe stanowiska są dodawane codziennie - znajdź swoje idealne miejsce już dziś.', 'Przeglądaj dostępne możliwości w całej Wielkiej Brytanii', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 3, 'en', 'Why Choose a Career with Helping Hands?', 'At Helping Hands, we believe that exceptional care starts with exceptional support for our carers. We offer one of the most comprehensive benefits packages in the industry, combining competitive financial rewards with genuine work-life balance and continuous professional development. Our carers are the heart of what we do, and we invest in your success, wellbeing, and career growth every step of the way.', 'Discover the comprehensive benefits package designed for your wellbeing', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 3, 'pl', 'Dlaczego Warto Wybrać Karierę z Helping Hands?', 'W Helping Hands wierzymy, że wyjątkowa opieka zaczyna się od wyjątkowego wsparcia dla naszych opiekunów. Oferujemy jeden z najbardziej kompleksowych pakietów benefitów w branży, łączący konkurencyjne nagrody finansowe z prawdziwą równowagą między pracą a życiem oraz ciągłym rozwojem zawodowym. Nasi opiekunowie są sercem tego, co robimy, i inwestujemy w Twój sukces, dobrostan i rozwój kariery na każdym kroku.', 'Odkryj kompleksowy pakiet benefitów zaprojektowany dla Twojego dobrego samopoczucia', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 4, 'en', 'Your Role & Responsibilities as a Live-In Carer', 'As a live-in carer with Helping Hands, you\'ll provide personalized, one-on-one care that enables clients to live independently and comfortably in their own homes. Your role focuses on supporting daily living while promoting dignity, independence, and quality of life. You\'ll assist with personal care including washing, dressing, and mobility support; prepare nutritious meals tailored to dietary needs; manage medication schedules; provide companionship and emotional support; assist with household tasks and shopping; support hobbies and social activities; and accompany clients to appointments and outings. Each client is unique, and we\'ll match you with placements that suit your skills and experience. You\'ll have daily breaks, 2-3 hours of personal time, and a full night\'s sleep in your private room.', 'Understanding what you\'ll do to make a difference every day', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 4, 'pl', 'Twoja Rola i Obowiązki jako Opiekun Domowy', 'Jako opiekun domowy w Helping Hands będziesz zapewniać spersonalizowaną opiekę jeden na jeden, która umożliwia klientom samodzielne i wygodne życie we własnych domach. Twoja rola koncentruje się na wspieraniu codziennego życia przy jednoczesnym promowaniu godności, niezależności i jakości życia. Będziesz pomagać w opiece osobistej, w tym myciu, ubieraniu i wsparciu mobilności; przygotowywać pożywne posiłki dostosowane do potrzeb dietetycznych; zarządzać harmonogramami leków; zapewniać towarzystwo i wsparcie emocjonalne; pomagać w zadaniach domowych i zakupach; wspierać hobby i zajęcia społeczne; towarzyszyć klientom na spotkaniach i wyjściach. Każdy klient jest wyjątkowy i dopasujemy Cię do miejsc odpowiadających Twoim umiejętnościom i doświadczeniu. Będziesz mieć codzienne przerwy, 2-3 godziny czasu osobistego i pełen sen nocny w swoim prywatnym pokoju.', 'Zrozumienie, co będziesz robić, aby codziennie wprowadzać zmianę', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 5, 'en', 'Professional Training & Career Development', 'Your professional development is our priority. Every Helping Hands carer receives comprehensive, CQC-registered training at no cost, whether you\'re starting your care career or advancing your expertise. Our training covers all essential skills including personal care techniques, health and safety, medication management, dementia care, first aid and emergency response, nutrition and meal planning, safeguarding, mental health awareness, and specialized care techniques. You\'ll receive ongoing support, annual refresher courses, and opportunities to gain recognized qualifications including NVQ Level 2 and 3 in Health and Social Care. We also offer mentorship programs, peer support networks, and clear pathways to senior care positions and specialist roles.', 'Invest in your future with our comprehensive CQC-registered training programs', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 5, 'pl', 'Profesjonalne Szkolenia i Rozwój Kariery', 'Twój rozwój zawodowy jest naszym priorytetem. Każdy opiekun Helping Hands otrzymuje kompleksowe szkolenie zarejestrowane przez CQC bez żadnych kosztów, niezależnie od tego, czy rozpoczynasz swoją karierę w opiece, czy rozwijasz swoją wiedzę specjalistyczną. Nasze szkolenia obejmują wszystkie niezbędne umiejętności, w tym techniki opieki osobistej, zdrowie i bezpieczeństwo, zarządzanie lekami, opiekę nad osobami z demencją, pierwszą pomoc i reakcję awaryjną, żywienie i planowanie posiłków, ochronę, świadomość zdrowia psychicznego i specjalistyczne techniki opieki. Otrzymasz bieżące wsparcie, coroczne kursy odświeżające i możliwości zdobycia uznanych kwalifikacji, w tym NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej. Oferujemy również programy mentorskie, sieci wsparcia rówieśniczego i jasne ścieżki do stanowisk kierowniczych w opiece i ról specjalistycznych.', 'Zainwestuj w swoją przyszłość dzięki naszym kompleksowym programom szkoleniowym zarejestrowanym przez CQC', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 6, 'en', 'Success Stories from Our Carers', 'Don\'t just take our word for it - hear directly from our experienced carers about their rewarding careers with Helping Hands. Our team members share their experiences of making a real difference, building meaningful relationships with clients, and enjoying the support and benefits that come with being part of the Helping Hands family. From career changers finding their true calling to experienced professionals advancing their skills, every carer has a unique story of growth, fulfillment, and positive impact.', 'Hear from the people who make Helping Hands special', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 6, 'pl', 'Historie Sukcesu Naszych Opiekunów', 'Nie wierz nam tylko na słowo - usłysz bezpośrednio od naszych doświadczonych opiekunów o ich satysfakcjonujących karierach z Helping Hands. Nasi członkowie zespołu dzielą się swoimi doświadczeniami wprowadzania prawdziwej zmiany, budowania znaczących relacji z klientami i cieszenia się wsparciem i korzyściami, które wiążą się z byciem częścią rodziny Helping Hands. Od osób zmieniających karierę, które znajdują swoje prawdziwe powołanie, po doświadczonych profesjonalistów rozwijających swoje umiejętności, każdy opiekun ma unikalną historię rozwoju, spełnienia i pozytywnego wpływu.', 'Usłysz od ludzi, którzy czynią Helping Hands wyjątkowym', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 7, 'en', 'Frequently Asked Questions', 'We understand you may have questions about starting your career as a live-in carer with Helping Hands. Below you\'ll find answers to the most common questions from prospective carers about qualifications, working patterns, support, pay, training, and daily responsibilities. Can\'t find what you\'re looking for? Our friendly recruitment team is here to help - get in touch today.', 'Get answers to common questions about working with us', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 7, 'pl', 'Często Zadawane Pytania', 'Rozumiemy, że możesz mieć pytania dotyczące rozpoczęcia kariery jako opiekun domowy z Helping Hands. Poniżej znajdziesz odpowiedzi na najczęstsze pytania od przyszłych opiekunów dotyczące kwalifikacji, wzorców pracy, wsparcia, wynagrodzenia, szkoleń i codziennych obowiązków. Nie możesz znaleźć tego, czego szukasz? Nasz przyjazny zespół rekrutacyjny jest tutaj, aby pomóc - skontaktuj się z nami już dziś.', 'Uzyskaj odpowiedzi na najczęstsze pytania dotyczące pracy z nami', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 8, 'en', 'How to Apply - Start Your Journey Today', 'Joining Helping Hands is straightforward and we\'re with you every step of the way. Here\'s what to expect: 1) Submit your application online or call us for an informal chat about opportunities. 2) Attend a friendly interview where we discuss your experience, preferences, and answer all your questions. 3) Complete reference checks and enhanced DBS clearance (we\'ll guide you through this). 4) Participate in comprehensive paid training covering all essential care skills. 5) Get matched with your first client based on your preferences and skills. 6) Start making a difference! The process typically takes 2-4 weeks, though it can be faster if you have existing qualifications. We keep you informed throughout and provide support at every stage. Ready to begin? Apply now or contact our team to learn more.', 'Your path to a rewarding career is just a few simple steps away', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(16, 8, 'pl', 'Jak Aplikować - Rozpocznij Swoją Podróż Już Dziś', 'Dołączenie do Helping Hands jest proste i jesteśmy z Tobą na każdym kroku. Oto, czego możesz się spodziewać: 1) Prześlij swoją aplikację online lub zadzwoń do nas, aby porozmawiać o możliwościach. 2) Weź udział w przyjaznej rozmowie kwalifikacyjnej, podczas której omówimy Twoje doświadczenie, preferencje i odpowiemy na wszystkie Twoje pytania. 3) Ukończ sprawdzanie referencji i rozszerzoną weryfikację DBS (przeprowadzimy Cię przez to). 4) Weź udział w kompleksowym płatnym szkoleniu obejmującym wszystkie niezbędne umiejętności opiekuńcze. 5) Zostań dopasowany do swojego pierwszego klienta na podstawie Twoich preferencji i umiejętności. 6) Zacznij wprowadzać zmianę! Proces zazwyczaj trwa 2-4 tygodnie, chociaż może być szybszy, jeśli masz istniejące kwalifikacje. Informujemy Cię przez cały czas i zapewniamy wsparcie na każdym etapie. Gotowy, aby zacząć? Aplikuj teraz lub skontaktuj się z naszym zespołem, aby dowiedzieć się więcej.', 'Twoja ścieżka do satysfakcjonującej kariery to tylko kilka prostych kroków', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pF5bgdXZCZqgW05JVWk1A4jA1s5bdER256FwCBpA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT3JmMURsVXJpQ2g3QWU2ejk4bXR6b3lSaFltY0ZsQjYySHh3VFZYbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoibG9jYWxlIjtzOjI6InBsIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1759760429);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` text COLLATE utf8mb4_unicode_ci,
  `value_pl` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value_en`, `value_pl`, `type`, `group`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Helping Hands', 'Helping Hands', 'text', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'site_tagline', 'Compassionate Care, Rewarding Careers', 'Opieka z Sercem, Satysfakcjonująca Kariera', 'text', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'contact_phone', '+44 20 3239 1227', '+44 20 3239 1227', 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'contact_email', 'recruitment@helpinghands.co.uk', 'recruitment@helpinghands.co.uk', 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'company_address', 'Helping Hands Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, United Kingdom', 'Helping Hands Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, Wielka Brytania', 'textarea', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'footer_text', 'Helping Hands is a leading provider of live-in care services across the UK. We are dedicated to supporting our carers with comprehensive CQC-registered training, competitive pay packages, and continuous professional development opportunities. Join our community of compassionate care professionals and build a truly rewarding career while making a meaningful difference in people\'s lives every single day.', 'Helping Hands jest wiodącym dostawcą usług opieki domowej w całej Wielkiej Brytanii. Jesteśmy zaangażowani we wspieranie naszych opiekunów kompleksowymi szkoleniami zarejestrowanymi przez CQC, konkurencyjnymi pakietami wynagrodzeń i ciągłymi możliwościami rozwoju zawodowego. Dołącz do naszej społeczności współczujących profesjonalistów opieki i zbuduj prawdziwie satysfakcjonującą karierę, wprowadzając znaczącą zmianę w życiu ludzi każdego dnia.', 'textarea', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'office_hours', 'Monday - Friday: 8:00 AM - 6:00 PM\\nSaturday: 9:00 AM - 5:00 PM\\nSunday: 10:00 AM - 4:00 PM\\n24/7 Emergency Support Available for All Carers', 'Poniedziałek - Piątek: 8:00 - 18:00\\nSobota: 9:00 - 17:00\\nNiedziela: 10:00 - 16:00\\nDostępne całodobowe wsparcie awaryjne dla wszystkich opiekunów', 'textarea', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'social_facebook', 'https://facebook.com/helpinghandshomecare', 'https://facebook.com/helpinghandshomecare', 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'social_linkedin', 'https://linkedin.com/company/helping-hands-home-care', 'https://linkedin.com/company/helping-hands-home-care', 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'social_instagram', 'https://instagram.com/helpinghandshomecare', 'https://instagram.com/helpinghandshomecare', 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'social_twitter', 'https://twitter.com/helpinghands_uk', 'https://twitter.com/helpinghands_uk', 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'meta_description', 'Join Helping Hands as a live-in carer and build a rewarding career. Earn £800-£1,200 per week with free accommodation, meals, comprehensive CQC training, healthcare benefits, and flexible working patterns. Apply now and make a real difference.', 'Dołącz do Helping Hands jako opiekun domowy i zbuduj satysfakcjonującą karierę. Zarabiaj £800-£1,200 tygodniowo z bezpłatnym zakwaterowaniem, wyżywieniem, kompleksowym szkoleniem CQC, świadczeniami zdrowotnymi i elastycznymi warunkami pracy. Aplikuj teraz i wprowadź prawdziwą zmianę.', 'textarea', 'seo', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'meta_keywords', 'live-in care jobs, carer jobs UK, care work, live-in carer, elderly care, home care jobs, care assistant jobs, CQC registered training, care career', 'praca w opiece domowej, praca opiekuna Wielka Brytania, praca w opiece, opiekun domowy, opieka nad osobami starszymi, praca w opiece domowej, szkolenie zarejestrowane CQC, kariera w opiece', 'text', 'seo', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'application_email', 'careers@helpinghands.co.uk', 'careers@helpinghands.co.uk', 'text', 'applications', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'whatsapp_number', '+44 7700 900456', '+44 7700 900456', 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(16, 'company_registration', 'Registered in England and Wales. Company No: 2538623. Care Quality Commission (CQC) Registered Provider. Regulated by the Care Quality Commission.', 'Zarejestrowany w Anglii i Walii. Numer firmy: 2538623. Zarejestrowany dostawca Care Quality Commission (CQC). Regulowany przez Care Quality Commission.', 'text', 'legal', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(17, 'vat_number', 'VAT Registration No: GB 365 8859 33', 'Numer VAT: GB 365 8859 33', 'text', 'legal', '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `training_modules`
--

CREATE TABLE `training_modules` (
  `id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `title_pl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_pl` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_modules`
--

INSERT INTO `training_modules` (`id`, `title_en`, `description_en`, `title_pl`, `description_pl`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Live-In Care & Professional Standards', 'Comprehensive foundation in live-in care work covering the role and responsibilities of a professional carer, understanding client-centered care approaches, establishing and maintaining professional boundaries, effective communication skills with clients and families, managing expectations, and maintaining a healthy work-life balance while living in your client\'s home. Learn about the Care Certificate standards, CQC requirements, and your rights and responsibilities as an employed carer.', 'Wprowadzenie do Opieki Domowej i Standardów Zawodowych', 'Kompleksowe podstawy pracy w opiece domowej obejmujące rolę i obowiązki profesjonalnego opiekuna, zrozumienie podejść do opieki skoncentrowanej na kliencie, ustanawianie i utrzymywanie granic zawodowych, skuteczne umiejętności komunikacyjne z klientami i rodzinami, zarządzanie oczekiwaniami i utrzymywanie zdrowej równowagi między pracą a życiem podczas mieszkania w domu klienta. Dowiedz się o standardach Certyfikatu Opieki, wymogach CQC oraz Twoich prawach i obowiązkach jako zatrudnionego opiekuna.', 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Personal Care, Dignity & Person-Centered Support', 'Master safe, respectful, and dignified techniques for providing personal care including washing, bathing, showering, oral hygiene, dressing and undressing, toileting and continence care, and mobility assistance. Learn to promote independence by encouraging clients to do what they can for themselves while providing support where needed. Understand privacy, dignity, choice, and respect in all care activities. Covers use of mobility aids, proper body mechanics, and adapting care to individual preferences and cultural needs.', 'Opieka Osobista, Godność i Wsparcie Zorientowane na Osobę', 'Opanuj bezpieczne, pełne szacunku i godności techniki świadczenia opieki osobistej, w tym mycie, kąpiel, prysznic, higienę jamy ustnej, ubieranie i rozbieranie, toaletę i opiekę nad nietrzymaniem oraz pomoc w mobilności. Naucz się promować niezależność, zachęcając klientów do robienia tego, co mogą sami, jednocześnie zapewniając wsparcie tam, gdzie jest potrzebne. Zrozum prywatność, godność, wybór i szacunek we wszystkich działaniach opiekuńczych. Obejmuje używanie pomocy do poruszania się, właściwą mechanikę ciała i dostosowywanie opieki do indywidualnych preferencji i potrzeb kulturowych.', 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'Health & Safety, Risk Assessment & Infection Control', 'Essential health and safety training covering risk assessment in home environments, manual handling techniques and safe moving practices, preventing and managing falls, fire safety and emergency procedures, safe use of equipment and household appliances, infection prevention and control including handwashing, PPE use, and waste disposal, COSHH regulations for household chemicals, and creating safer living environments. Learn to identify hazards, assess risks, and implement practical solutions while respecting the client\'s home.', 'Zdrowie i Bezpieczeństwo, Ocena Ryzyka i Kontrola Infekcji', 'Podstawowe szkolenie z zakresu zdrowia i bezpieczeństwa obejmujące ocenę ryzyka w środowiskach domowych, techniki ręcznego podnoszenia i bezpieczne praktyki przenoszenia, zapobieganie upadkom i zarządzanie nimi, bezpieczeństwo pożarowe i procedury awaryjne, bezpieczne używanie sprzętu i urządzeń domowych, zapobieganie infekcjom i kontrolę, w tym mycie rąk, stosowanie środków ochrony osobistej i utylizację odpadów, przepisy COSHH dotyczące chemikaliów domowych oraz tworzenie bezpieczniejszych środowisk życia. Naucz się identyfikować zagrożenia, oceniać ryzyko i wdrażać praktyczne rozwiązania, szanując dom klienta.', 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'Medication Administration & Healthcare Support', 'Comprehensive medication training covering types of medications and their purposes, safe administration techniques, the 6 Rs of medication safety (Right person, Right medicine, Right dose, Right time, Right route, Right to refuse), proper storage and handling, accurate recording and documentation, recognizing and reporting side effects and adverse reactions, supporting clients with self-medication, and when to seek medical advice. Includes training on common medications for chronic conditions, inhalers, insulin, and topical treatments. Certification meets CQC requirements for medication competency.', 'Podawanie Leków i Wsparcie Opieki Zdrowotnej', 'Kompleksowe szkolenie z zakresu leków obejmujące rodzaje leków i ich cele, bezpieczne techniki podawania, 6 R bezpieczeństwa lekowego (Właściwa osoba, Właściwy lek, Właściwa dawka, Właściwy czas, Właściwa droga, Prawo do odmowy), właściwe przechowywanie i obsługę, dokładne rejestrowanie i dokumentację, rozpoznawanie i zgłaszanie skutków ubocznych i reakcji niepożądanych, wspieranie klientów w samodzielnym przyjmowaniu leków oraz kiedy szukać porady medycznej. Obejmuje szkolenie dotyczące popularnych leków na choroby przewlekłe, inhalatorów, insuliny i leczenia miejscowego. Certyfikacja spełnia wymagania CQC dotyczące kompetencji w zakresie leków.', 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Dementia Care & Memory Support', 'Specialized dementia care training covering understanding different types of dementia (Alzheimer\'s, vascular, Lewy body, frontotemporal), how dementia affects thinking, memory, and behavior, person-centered dementia care approaches, effective communication strategies (validation, reminiscence, life story work), managing challenging behaviors with compassion and understanding, creating dementia-friendly environments, supporting daily activities and maintaining abilities, working with families and understanding carer stress, and promoting quality of life and wellbeing for people living with dementia.', 'Opieka nad Osobami z Demencją i Wsparcie Pamięci', 'Specjalistyczne szkolenie w zakresie opieki nad osobami z demencją obejmujące zrozumienie różnych rodzajów demencji (Alzheimer, naczyniowa, ciała Lewy\'ego, czołowo-skroniowa), jak demencja wpływa na myślenie, pamięć i zachowanie, podejścia do opieki nad osobami z demencją skoncentrowane na osobie, skuteczne strategie komunikacji (walidacja, wspominanie, praca nad historią życia), zarządzanie trudnymi zachowaniami ze współczuciem i zrozumieniem, tworzenie środowisk przyjaznych dla osób z demencją, wspieranie codziennych działań i utrzymywanie zdolności, praca z rodzinami i zrozumienie stresu opiekuna oraz promowanie jakości życia i dobrostanu dla osób żyjących z demencją.', 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'First Aid, Emergency Response & Basic Life Support', 'Certified first aid training (renewable annually) covering CPR and basic life support, managing choking in adults, dealing with falls and fractures, treating burns and scalds, managing bleeding and wounds, recognizing and responding to heart attacks and strokes, diabetic emergencies (hypo/hyperglycemia), seizures and epilepsy, allergic reactions, and shock. Learn the DRSABC approach, when and how to call emergency services, what information to provide, and how to keep calm in emergencies. Includes practical scenarios and hands-on practice with mannequins and equipment.', 'Pierwsza Pomoc, Reakcja Awaryjna i Podstawowe Wsparcie Życia', 'Certyfikowane szkolenie z pierwszej pomocy (odnawiane corocznie) obejmujące RKO i podstawowe wsparcie życia, zarządzanie zadławieniem u dorosłych, radzenie sobie z upadkami i złamaniami, leczenie oparzeń, zarządzanie krwawieniem i ranami, rozpoznawanie i reagowanie na ataki serca i udary, nagłe przypadki cukrzycowe (hipo/hiperglikemia), napady padaczkowe i epilepsję, reakcje alergiczne i wstrząs. Naucz się podejścia DRSABC, kiedy i jak dzwonić po służby ratunkowe, jakie informacje przekazać i jak zachować spokój w sytuacjach awaryjnych. Obejmuje praktyczne scenariusze i praktyczne ćwiczenia z manekinami i sprzętem.', 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'Nutrition, Hydration & Meal Preparation', 'Comprehensive nutrition training covering nutritional needs of older adults, understanding common dietary requirements (diabetic, low sodium, soft diet, pureed, etc.), food safety and hygiene, meal planning on a budget, preparing nutritious and appetizing meals, supporting clients with eating and drinking, recognizing signs of malnutrition and dehydration, managing poor appetite and swallowing difficulties, cultural and religious dietary considerations, and encouraging adequate fluid intake. Includes practical cooking skills, adapting recipes for special diets, and making mealtimes enjoyable social occasions.', 'Żywienie, Nawodnienie i Przygotowywanie Posiłków', 'Kompleksowe szkolenie z zakresu żywienia obejmujące potrzeby żywieniowe osób starszych, zrozumienie powszechnych wymagań dietetycznych (cukrzycowych, niskosodowych, miękkiej diety, przecierów itp.), bezpieczeństwo i higienę żywności, planowanie posiłków na budżet, przygotowywanie pożywnych i apetycznych posiłków, wspieranie klientów w jedzeniu i piciu, rozpoznawanie oznak niedożywienia i odwodnienia, zarządzanie słabym apetytem i trudnościami w połykaniu, kulturowe i religijne względy dietetyczne oraz zachęcanie do odpowiedniego spożycia płynów. Obejmuje praktyczne umiejętności gotowania, dostosowywanie przepisów do specjalnych diet i czynienie posiłków przyjemnymi okazjami społecznymi.', 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'Safeguarding Adults & Duty of Care', 'Critical training on protecting vulnerable adults from harm, abuse, and neglect. Covers the six types of abuse (physical, emotional/psychological, sexual, financial, neglect, discriminatory), recognizing signs and indicators of abuse, understanding why abuse happens and who might be at risk, your legal duty to report concerns and safeguarding procedures, whistleblowing and raising concerns about poor practice, maintaining professional boundaries, the Mental Capacity Act and consent, and supporting clients who lack capacity. Learn about local safeguarding authorities, reporting procedures, and how to document concerns properly.', 'Ochrona Dorosłych i Obowiązek Opieki', 'Kluczowe szkolenie w zakresie ochrony wrażliwych dorosłych przed krzywdą, nadużyciami i zaniedbaniem. Obejmuje sześć rodzajów nadużyć (fizyczne, emocjonalne/psychologiczne, seksualne, finansowe, zaniedbanie, dyskryminujące), rozpoznawanie oznak i wskaźników nadużyć, zrozumienie, dlaczego dochodzi do nadużyć i kto może być zagrożony, Twój prawny obowiązek zgłaszania obaw i procedury ochrony, zgłaszanie nieprawidłowości i podnoszenie obaw o złe praktyki, utrzymywanie granic zawodowych, ustawę o zdolności umysłowej i zgodę oraz wspieranie klientów, którzy nie mają zdolności. Dowiedz się o lokalnych władzach ochrony, procedurach zgłaszania i jak prawidłowo dokumentować obawy.', 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'End of Life & Palliative Care Support', 'Sensitive and compassionate training in supporting clients and families through end of life. Covers understanding palliative care principles and goals, recognizing signs that someone may be approaching end of life, supporting comfort and dignity in the final stages, pain and symptom management support, emotional and spiritual support for clients, supporting families and understanding grief, practical aspects of end of life care at home, advance care planning and respecting wishes, your own emotions and self-care when caring for someone who is dying, and after-death care procedures. This module helps you provide compassionate, dignified care during this profound time.', 'Opieka w Końcu Życia i Wsparcie Opieki Paliatywnej', 'Wrażliwe i współczujące szkolenie we wspieraniu klientów i rodzin przez koniec życia. Obejmuje zrozumienie zasad i celów opieki paliatywnej, rozpoznawanie oznak, że ktoś może zbliżać się do końca życia, wspieranie komfortu i godności w końcowych etapach, wsparcie w zarządzaniu bólem i objawami, wsparcie emocjonalne i duchowe dla klientów, wspieranie rodzin i zrozumienie żałoby, praktyczne aspekty opieki w końcu życia w domu, planowanie opieki z wyprzedzeniem i szanowanie życzeń, Twoje własne emocje i samoopieka podczas opieki nad kimś, kto umiera, oraz procedury opieki po śmierci. Ten moduł pomaga zapewnić współczującą, godną opiekę w tym głębokim czasie.', 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'Mental Health, Wellbeing & Emotional Support', 'Understanding mental health in older adults including common conditions such as depression, anxiety, and loneliness/social isolation. Learn to recognize signs and symptoms of mental health problems, supportive communication and active listening skills, promoting mental wellbeing through meaningful activities and social connection, when and how to seek professional mental health support, supporting clients taking mental health medications, understanding the link between physical and mental health, and creating a positive, therapeutic relationship. Includes awareness of the impact of life changes, loss, and transition on mental health.', 'Zdrowie Psychiczne, Dobrostan i Wsparcie Emocjonalne', 'Zrozumienie zdrowia psychicznego u osób starszych, w tym powszechne stany, takie jak depresja, lęk i samotność/izolacja społeczna. Naucz się rozpoznawać oznaki i objawy problemów ze zdrowiem psychicznym, wspierające umiejętności komunikacji i aktywnego słuchania, promowanie dobrostanu psychicznego poprzez znaczące działania i połączenie społeczne, kiedy i jak szukać profesjonalnego wsparcia zdrowia psychicznego, wspieranie klientów przyjmujących leki na zdrowie psychiczne, zrozumienie związku między zdrowiem fizycznym a psychicznym oraz tworzenie pozytywnej, terapeutycznej relacji. Obejmuje świadomość wpływu zmian życiowych, straty i przejścia na zdrowie psychiczne.', 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'Communication Skills & Building Relationships', 'Advanced communication training covering verbal and non-verbal communication, active listening and empathy, communicating with people with hearing or visual impairments, supporting people with communication difficulties (aphasia, dysarthria), cultural sensitivity and diversity, handling difficult conversations and conflicts, working effectively with families and healthcare professionals, telephone communication and keeping others informed, and documentation and record-keeping. Learn to build trusting, professional relationships that enhance care quality and client satisfaction.', 'Umiejętności Komunikacyjne i Budowanie Relacji', 'Zaawansowane szkolenie komunikacyjne obejmujące komunikację werbalną i niewerbalną, aktywne słuchanie i empatię, komunikację z osobami z wadami słuchu lub wzroku, wspieranie osób z trudnościami w komunikacji (afazja, dyzartria), wrażliwość kulturową i różnorodność, radzenie sobie z trudnymi rozmowami i konfliktami, skuteczną pracę z rodzinami i profesjonalistami opieki zdrowotnej, komunikację telefoniczną i informowanie innych oraz dokumentację i prowadzenie zapisów. Naucz się budować zaufane, profesjonalne relacje, które poprawiają jakość opieki i satysfakcję klienta.', 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Condition-Specific Care: Stroke, Parkinson\'s & Diabetes', 'Specialized training for caring for clients with specific conditions. Stroke care includes understanding stroke effects, supporting recovery and rehabilitation, managing physical disabilities, and communication after stroke. Parkinson\'s care covers understanding symptoms and progression, medication management, supporting mobility and preventing falls, and managing tremors and rigidity. Diabetes care includes blood glucose monitoring, supporting medication and insulin administration, recognizing and responding to hypo/hyperglycemia, diabetic diet support, and foot care. This specialist knowledge helps you provide confident, effective care.', 'Opieka Specyficzna dla Stanów: Udar, Parkinson i Cukrzyca', 'Specjalistyczne szkolenie dla opieki nad klientami z określonymi stanami. Opieka po udarze obejmuje zrozumienie skutków udaru, wspieranie powrotu do zdrowia i rehabilitacji, zarządzanie niepełnosprawnościami fizycznymi i komunikację po udarze. Opieka nad Parkinsonem obejmuje zrozumienie objawów i postępu, zarządzanie lekami, wspieranie mobilności i zapobieganie upadkom oraz zarządzanie drżeniem i sztywnością. Opieka nad cukrzycą obejmuje monitorowanie glukozy we krwi, wspieranie podawania leków i insuliny, rozpoznawanie i reagowanie na hipo/hiperglikemię, wsparcie diety cukrzycowej i opiekę nad stopami. Ta specjalistyczna wiedza pomaga zapewnić pewną, skuteczną opiekę.', 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'Activities, Engagement & Quality of Life', 'Training focused on enhancing client wellbeing through meaningful activities and social engagement. Covers understanding the importance of occupation and purpose, assessing interests and abilities, planning and facilitating activities (hobbies, crafts, games, exercise, reminiscence, music, reading), supporting social connections and community involvement, adapting activities for physical or cognitive limitations, encouraging independence and choice, and using activity to support physical, mental, and emotional health. Learn to make every day meaningful and enjoyable for your clients.', 'Działania, Zaangażowanie i Jakość Życia', 'Szkolenie skoncentrowane na poprawie dobrostanu klienta poprzez znaczące działania i zaangażowanie społeczne. Obejmuje zrozumienie znaczenia zajęcia i celu, ocenę zainteresowań i zdolności, planowanie i ułatwianie działań (hobby, rękodzieło, gry, ćwiczenia, wspominanie, muzyka, czytanie), wspieranie połączeń społecznych i zaangażowania w społeczność, dostosowywanie działań do ograniczeń fizycznych lub poznawczych, zachęcanie do niezależności i wyboru oraz wykorzystywanie działań do wspierania zdrowia fizycznego, psychicznego i emocjonalnego. Naucz się czynić każdy dzień znaczącym i przyjemnym dla swoich klientów.', 13, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'Professional Development & Career Progression', 'Supporting your ongoing growth as a care professional. Covers reflective practice and learning from experience, supervision and professional support, continuing professional development (CPD), pathways to qualifications (NVQ Level 2 and 3), specialist training opportunities (dementia champion, end of life care, diabetes care), progression to senior carer and coordinator roles, mentoring and supporting new carers, leadership skills development, and understanding quality standards and best practice. This module helps you map your career journey and achieve your professional goals.', 'Rozwój Zawodowy i Postęp w Karierze', 'Wspieranie Twojego ciągłego rozwoju jako profesjonalisty opieki. Obejmuje praktykę refleksyjną i uczenie się z doświadczenia, nadzór i wsparcie zawodowe, ciągły rozwój zawodowy (CPD), ścieżki do kwalifikacji (NVQ Level 2 i 3), możliwości szkolenia specjalistycznego (mistrz demencji, opieka w końcu życia, opieka nad cukrzycą), postęp do ról starszego opiekuna i koordynatora, mentorowanie i wspieranie nowych opiekunów, rozwój umiejętności przywódczych oraz zrozumienie standardów jakości i najlepszych praktyk. Ten moduł pomaga zmapować Twoją podróż kariery i osiągnąć Twoje cele zawodowe.', 14, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'Self-Care, Resilience & Preventing Burnout', 'Essential training for maintaining your own wellbeing while caring for others. Covers recognizing signs of stress and burnout, strategies for managing work-related stress, maintaining work-life balance in live-in care, the importance of using your time off effectively, physical self-care (sleep, nutrition, exercise), emotional self-care and processing difficult experiences, accessing support when you need it, building resilience and coping strategies, and preventing compassion fatigue. Learn that taking care of yourself is essential to providing excellent care for others.', 'Samoopiek a, Odporność i Zapobieganie Wypaleniu', 'Podstawowe szkolenie dla utrzymania własnego dobrostanu podczas opieki nad innymi. Obejmuje rozpoznawanie oznak stresu i wypalenia, strategie zarządzania stresem związanym z pracą, utrzymywanie równowagi między pracą a życiem w opiece domowej, znaczenie efektywnego wykorzystywania czasu wolnego, samoopieka fizyczna (sen, żywienie, ćwiczenia), samoopiek a emocjonalna i przetwarzanie trudnych doświadczeń, dostęp do wsparcia, gdy go potrzebujesz, budowanie odporności i strategii radzenia sobie oraz zapobieganie zmęczeniu współczuciem. Dowiedz się, że dbanie o siebie jest niezbędne do zapewnienia doskonałej opieki nad innymi.', 15, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', '2025-10-06 13:07:18', '$2y$12$UDBfNJcPIsc7soz2y.wtpen4V6xHynJjusW4WbtNMNhFAvNCY4JMC', NULL, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_key_unique` (`key`);

--
-- Indexes for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_translations_section_id_locale_unique` (`section_id`,`locale`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `training_modules`
--
ALTER TABLE `training_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `section_translations`
--
ALTER TABLE `section_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `training_modules`
--
ALTER TABLE `training_modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD CONSTRAINT `section_translations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
