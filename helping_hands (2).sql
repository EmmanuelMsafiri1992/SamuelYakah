-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2025 at 05:43 AM
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
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_pl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_nl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_pl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_nl` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `title_en`, `description_en`, `title_pl`, `title_nl`, `description_pl`, `description_nl`, `icon`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Competitive Weekly Pay', 'Earn £800-£1,200 per week depending on experience, qualifications, and location. We offer some of the best rates in the live-in care industry with transparent pay structures and regular reviews. Your hard work and dedication are recognized and rewarded.', 'Konkurencyjne Wynagrodzenie Tygodniowe', NULL, 'Zarabiaj £800-£1,200 tygodniowo w zależności od doświadczenia, kwalifikacji i lokalizacji. Oferujemy jedne z najlepszych stawek w branży opieki domowej z przejrzystymi strukturami wynagrodzeń i regularnymi przeglądami. Twoja ciężka praca i oddanie są doceniane i nagradzane.', NULL, 'currency-pound', 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Free Accommodation & All Meals', 'Live rent-free in comfortable, private accommodation with your own bedroom and often en-suite facilities. All meals are provided throughout your assignment, allowing you to save significantly while earning. Enjoy quality living spaces that feel like a home away from home.', 'Bezpłatne Zakwaterowanie i Wszystkie Posiłki', NULL, 'Mieszkaj bez czynszu w komfortowym, prywatnym zakwaterowaniu z własną sypialnią i często łazienką en-suite. Wszystkie posiłki są zapewnione podczas twojego zlecenia, pozwalając na znaczne oszczędności podczas zarabiania. Ciesz się jakościowymi przestrzeniami mieszkalnymi, które przypominają dom z dala od domu.', NULL, 'home', 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'Comprehensive CQC-Registered Training', 'Receive full CQC-registered training and professional certification at absolutely no cost to you. Our comprehensive program covers personal care, medication management, dementia care, first aid, safeguarding, and specialized techniques. Gain recognized qualifications including NVQ Level 2 and 3 in Health and Social Care.', 'Kompleksowe Szkolenia Zarejestrowane przez CQC', NULL, 'Otrzymaj pełne szkolenie zarejestrowane przez CQC i profesjonalną certyfikację bez żadnych kosztów. Nasz kompleksowy program obejmuje opiekę osobistą, zarządzanie lekami, opiekę nad osobami z demencją, pierwszą pomoc, ochronę i specjalistyczne techniki. Zdobądź uznane kwalifikacje, w tym NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej.', NULL, 'academic-cap', 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'Healthcare & Wellbeing Benefits', 'Access to healthcare benefits including occupational health support, counseling services, and wellbeing programs. We care about your physical and mental health as much as you care for our clients. Regular health checks and professional support are available to all carers.', 'Świadczenia Zdrowotne i Dobrego Samopoczucia', NULL, 'Dostęp do świadczeń zdrowotnych, w tym wsparcia zdrowia zawodowego, usług doradczych i programów dobrego samopoczucia. Dbamy o Twoje zdrowie fizyczne i psychiczne tak samo, jak Ty dbasz o naszych klientów. Regularne kontrole zdrowotne i profesjonalne wsparcie są dostępne dla wszystkich opiekunów.', NULL, 'shield-check', 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Clear Career Progression Pathways', 'Build a rewarding long-term career with transparent progression opportunities. Advance from live-in carer to senior carer, specialist positions, care coordinator, or training roles. We invest in your professional development with mentorship programs, advanced qualifications, and leadership training.', 'Jasne Ścieżki Rozwoju Kariery', NULL, 'Zbuduj satysfakcjonującą długoterminową karierę z przejrzystymi możliwościami awansu. Awansuj z opiekuna domowego do starszego opiekuna, stanowisk specjalistycznych, koordynatora opieki lub ról szkoleniowych. Inwestujemy w Twój rozwój zawodowy poprzez programy mentorskie, zaawansowane kwalifikacje i szkolenia przywódcze.', NULL, 'chart-bar', 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'Flexible Working Schedules', 'Choose working patterns that suit your lifestyle and personal commitments. Options include 2 weeks on/1 week off, 4 weeks on/2 weeks off, or custom arrangements. Your time off is genuinely yours - return home, travel, or relax knowing your next placement is arranged around your availability.', 'Elastyczne Harmonogramy Pracy', NULL, 'Wybierz wzorce pracy odpowiadające Twojemu stylowi życia i osobistym zobowiązaniom. Opcje obejmują 2 tygodnie pracy/1 tydzień wolnego, 4 tygodnie pracy/2 tygodnie wolnego lub niestandardowe ustalenia. Twój czas wolny jest naprawdę Twój - wróć do domu, podróżuj lub odpocznij, wiedząc, że Twoje następne miejsce pracy jest zorganizowane zgodnie z Twoją dostępnością.', NULL, 'clock', 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, '24/7 Dedicated Support Network', 'Never feel alone in your role. Access round-the-clock support from experienced care coordinators, clinical advisors, and dedicated support teams. Join peer support groups, attend regular carer meetups, and benefit from ongoing guidance whenever you need it - day or night.', 'Dedykowana Sieć Wsparcia 24/7', NULL, 'Nigdy nie czuj się samotny w swojej roli. Uzyskaj całodobowe wsparcie od doświadczonych koordynatorów opieki, doradców klinicznych i dedykowanych zespołów wsparcia. Dołącz do grup wsparcia rówieśniczego, uczestniczyć w regularnych spotkaniach opiekunów i korzystaj z bieżących wskazówek, kiedy tylko potrzebujesz - w dzień i w nocy.', NULL, 'phone', 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'Full Travel Expenses Covered', 'All travel costs between assignments are completely covered by us. Whether by flight, train, coach, or personal vehicle (mileage reimbursement), you won\'t be out of pocket. We handle all arrangements to ensure your journey between placements is stress-free and fully funded.', 'Pełne Pokrycie Kosztów Podróży', NULL, 'Wszystkie koszty podróży między zleceniami są całkowicie pokryte przez nas. Bez względu na to, czy lotem, pociągiem, autokarem czy pojazdem osobistym (zwrot kosztów przejazdu), nie będziesz nic płacić. Zajmujemy się wszystkimi ustaleniami, aby zapewnić, że Twoja podróż między miejscami pracy jest bezstresowa i w pełni sfinansowana.', NULL, 'truck', 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'Paid Annual Leave & Holidays', 'Enjoy statutory paid holiday entitlement in addition to your regular time off between assignments. Plan holidays and breaks with guaranteed income, ensuring you maintain a healthy work-life balance. Bank holidays and special occasions are recognized and compensated.', 'Płatny Urlop Roczny i Święta', NULL, 'Ciesz się ustawowym płatnym urlopem wypoczynkowym oprócz regularnego czasu wolnego między zleceniami. Planuj wakacje i przerwy z gwarantowanym dochodem, zapewniając utrzymanie zdrowej równowagi między pracą a życiem. Dni ustawowo wolne od pracy i specjalne okazje są uznawane i kompensowane.', NULL, 'calendar', 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'Continuous Professional Development', 'Access ongoing learning opportunities with regular refresher courses, advanced training modules, and specialist certifications. Attend workshops, conferences, and seminars to expand your expertise. We support your passion for learning with funded courses and dedicated study time.', 'Ciągły Rozwój Zawodowy', NULL, 'Uzyskaj dostęp do bieżących możliwości uczenia się dzięki regularnym kursom odświeżającym, zaawansowanym modułom szkoleniowym i certyfikatom specjalistycznym. Uczestniczyć w warsztatach, konferencjach i seminariach, aby poszerzyć swoją wiedzę. Wspieramy Twoją pasję do nauki finansowanymi kursami i dedykowanym czasem nauki.', NULL, 'book-open', 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'Work-Life Balance Guaranteed', 'We understand the importance of personal time. Enjoy structured breaks during assignments, regular scheduled time off, and the flexibility to maintain relationships and pursue interests outside work. Our scheduling respects your need for rest, recreation, and quality time with loved ones.', 'Gwarantowana Równowaga Między Pracą a Życiem', NULL, 'Rozumiemy znaczenie czasu osobistego. Ciesz się ustrukturyzowanymi przerwami podczas zleceń, regularnym zaplanowanym czasem wolnym i elastycznością w utrzymywaniu relacji i realizowaniu zainteresowań poza pracą. Nasz harmonogram szanuje Twoją potrzebę odpoczynku, rekreacji i czasu jakości z bliskimi.', NULL, 'sun', 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Make a Meaningful Impact', 'Experience the profound satisfaction of making a genuine difference every single day. Provide one-on-one care that enables clients to live independently with dignity in their own homes. Build meaningful relationships, witness positive changes, and know your work truly matters to the people you support.', 'Wprowadź Znaczący Wpływ', NULL, 'Doświadcz głębokiej satysfakcji z wprowadzania prawdziwej zmiany każdego dnia. Zapewnij opiekę jeden na jeden, która umożliwia klientom samodzielne życie z godnością we własnych domach. Buduj znaczące relacje, obserwuj pozytywne zmiany i wiedz, że Twoja praca naprawdę ma znaczenie dla ludzi, których wspierasz.', NULL, 'heart', 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `care_jobs`
--

CREATE TABLE `care_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_pl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_nl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_pl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_nl` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_en`, `answer_en`, `question_pl`, `question_nl`, `answer_pl`, `answer_nl`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'What qualifications do I need to become a live-in carer?', 'While formal qualifications are not always required, we value compassion, reliability, patience, and a genuine desire to help others. The essential requirements are: basic English communication skills, right to work in the UK, willingness to undergo an enhanced DBS check, and physical ability to assist with mobility and personal care. We provide comprehensive CQC-registered training for all new carers, including opportunities to gain NVQ Level 2 or 3 in Health and Social Care at no cost. Previous care experience is beneficial but not mandatory - we welcome career changers and those new to care who have the right attitude and commitment.', 'Jakie kwalifikacje są potrzebne, aby zostać opiekunem domowym?', NULL, 'Chociaż formalne kwalifikacje nie zawsze są wymagane, cenimy współczucie, niezawodność, cierpliwość i szczere pragnienie pomocy innym. Podstawowe wymagania to: podstawowe umiejętności komunikacji w języku angielskim, prawo do pracy w Wielkiej Brytanii, chęć poddania się rozszerzonemu sprawdzeniu DBS i fizyczna zdolność do pomocy w mobilności i opiece osobistej. Zapewniamy kompleksowe szkolenia zarejestrowane przez CQC dla wszystkich nowych opiekunów, w tym możliwości zdobycia NVQ Level 2 lub 3 w zakresie zdrowia i opieki społecznej bez żadnych kosztów. Poprzednie doświadczenie w opiece jest korzystne, ale nie obowiązkowe - witamy osoby zmieniające karierę i nowe w opiece, które mają odpowiednie nastawienie i zaangażowanie.', NULL, 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Am I employed or self-employed as a live-in carer?', 'At Helping Hands, you are employed directly by us on a PAYE basis, not self-employed. This means you receive all employment benefits including holiday pay, sick pay, pension contributions, and full tax and National Insurance contributions handled by us. You\'re protected by employment law, receive regular payslips, and have the security of being a valued employee. This is different from agency work and provides much greater stability and benefits.', 'Czy jestem zatrudniony czy samozatrudniony jako opiekun domowy?', NULL, 'W Helping Hands jesteś zatrudniony bezpośrednio przez nas na zasadzie PAYE, a nie samozatrudniony. Oznacza to, że otrzymujesz wszystkie świadczenia pracownicze, w tym wynagrodzenie urlopowe, zasiłek chorobowy, składki emerytalne oraz pełne składki podatkowe i ubezpieczenia społecznego obsługiwane przez nas. Jesteś chroniony przez prawo pracy, otrzymujesz regularne paski wynagrodzeń i masz bezpieczeństwo bycia cenionym pracownikiem. To różni się od pracy agencyjnej i zapewnia znacznie większą stabilność i korzyści.', NULL, 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'How much time off do I get between assignments?', 'We offer flexible working patterns designed around your lifestyle and personal commitments. The most popular arrangements are 2 weeks on/1 week off or 4 weeks on/2 weeks off, but we can discuss custom patterns that work for you. During your time off, you are completely free to return home, travel, spend time with family, or relax as you wish. Your time off is genuinely yours - we don\'t contact you during breaks unless you request us to. We plan your next assignment around your availability and always give you advance notice of upcoming placements.', 'Ile czasu wolnego otrzymuję między zleceniami?', NULL, 'Oferujemy elastyczne wzorce pracy zaprojektowane wokół Twojego stylu życia i osobistych zobowiązań. Najpopularniejsze układy to 2 tygodnie pracy/1 tydzień wolnego lub 4 tygodnie pracy/2 tygodnie wolnego, ale możemy omówić niestandardowe wzorce, które Ci odpowiadają. Podczas czasu wolnego jesteś całkowicie wolny, aby wrócić do domu, podróżować, spędzić czas z rodziną lub odpocząć, jak chcesz. Twój czas wolny jest naprawdę Twój - nie kontaktujemy się z Tobą podczas przerw, chyba że o to poprosisz. Planujemy Twoje następne zlecenie zgodnie z Twoją dostępnością i zawsze informujemy z wyprzedzeniem o nadchodzących miejscach pracy.', NULL, 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'What does a typical day look like as a live-in carer?', 'Each day varies depending on your client\'s individual needs and preferences, making the role interesting and varied. A typical day might include: helping with morning routines like washing and dressing; preparing and sharing meals together; administering medication according to prescribed schedules; light housekeeping tasks; accompanying the client on shopping trips or appointments; supporting hobbies and interests; providing companionship and conversation; and assisting with evening routines. You\'ll have structured breaks throughout the day, typically 2-3 hours of personal time in the afternoon, and a full 8 hours of uninterrupted sleep at night in your private room. The role focuses on enabling independence and maintaining dignity, not doing everything for the client. You work alongside them, supporting their abilities while assisting where needed.', 'Jak wygląda typowy dzień jako opiekun domowy?', NULL, 'Każdy dzień różni się w zależności od indywidualnych potrzeb i preferencji klienta, dzięki czemu rola jest interesująca i zróżnicowana. Typowy dzień może obejmować: pomoc w porannych czynnościach, takich jak mycie i ubieranie; przygotowywanie i dzielenie posiłków razem; podawanie leków zgodnie z przepisanymi harmonogramami; lekkie zadania domowe; towarzyszenie klientowi podczas zakupów lub wizyt; wspieranie hobby i zainteresowań; zapewnianie towarzystwa i rozmowy; pomoc w wieczornych czynnościach. Będziesz mieć ustrukturyzowane przerwy w ciągu dnia, zazwyczaj 2-3 godziny czasu osobistego po południu i pełne 8 godzin nieprzerwanego snu w nocy w swoim prywatnym pokoju. Rola koncentruje się na umożliwieniu niezależności i utrzymaniu godności, a nie robieniu wszystkiego za klienta. Pracujesz razem z nimi, wspierając ich umiejętności, jednocześnie pomagając tam, gdzie jest to potrzebne.', NULL, 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Will I have my own room and privacy?', 'Absolutely yes. You will always have your own private bedroom in the client\'s home, and we never place two carers in one room. Most placements offer en-suite bathroom facilities, though this isn\'t always possible in every home. You\'ll have full access to household amenities including kitchen, living areas, laundry facilities, and often WiFi. Your room is your private space to relax during breaks and rest at night. You\'re entitled to structured breaks during the day, personal time in the afternoon, and a guaranteed 8 hours of uninterrupted sleep each night. We inspect all accommodations before placement to ensure they meet our quality and comfort standards.', 'Czy będę mieć własny pokój i prywatność?', NULL, 'Absolutnie tak. Zawsze będziesz mieć własną prywatną sypialnię w domu klienta i nigdy nie umieszczamy dwóch opiekunów w jednym pokoju. Większość miejsc oferuje łazienkę en-suite, chociaż nie zawsze jest to możliwe w każdym domu. Będziesz mieć pełny dostęp do domowych udogodnień, w tym kuchni, salonów, pralni i często WiFi. Twój pokój jest Twoją prywatną przestrzenią do relaksu podczas przerw i odpoczynku w nocy. Przysługują Ci ustrukturyzowane przerwy w ciągu dnia, czas osobisty po południu i gwarantowane 8 godzin nieprzerwanego snu każdej nocy. Sprawdzamy wszystkie zakwaterowania przed umieszczeniem, aby upewnić się, że spełniają nasze standardy jakości i komfortu.', NULL, 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'What support will I receive while on assignment?', 'Comprehensive support is a cornerstone of working with Helping Hands. You\'ll have access to 24/7 support from experienced care coordinators who understand the challenges and rewards of live-in care. Our clinical team provides expert advice on medical and care-related questions. We conduct regular check-in calls to ensure everything is going well and you have everything you need. You\'ll join peer support groups where you can connect with fellow carers, share experiences, and build friendships. We offer ongoing training opportunities, annual refresher courses, and access to specialist advice when needed. If any issues arise - whether practical, medical, or personal - you can contact us anytime, day or night, for guidance, emergency support, or just to talk through concerns. Regular reviews ensure both you and your client are satisfied with the arrangement.', 'Jakie wsparcie otrzymam podczas zlecenia?', NULL, 'Kompleksowe wsparcie jest kamieniem węgielnym pracy z Helping Hands. Będziesz mieć dostęp do całodobowego wsparcia od doświadczonych koordynatorów opieki, którzy rozumieją wyzwania i nagrody opieki domowej. Nasz zespół kliniczny zapewnia fachowe porady w kwestiach medycznych i związanych z opieką. Prowadzimy regularne rozmowy kontrolne, aby upewnić się, że wszystko idzie dobrze i masz wszystko, czego potrzebujesz. Dołączysz do grup wsparcia rówieśniczego, gdzie możesz połączyć się z innymi opiekunami, dzielić się doświadczeniami i budować przyjaźnie. Oferujemy bieżące możliwości szkoleniowe, coroczne kursy odświeżające i dostęp do porad specjalistycznych, gdy jest to potrzebne. Jeśli pojawią się jakiekolwiek problemy - czy to praktyczne, medyczne czy osobiste - możesz się z nami skontaktować w dowolnym momencie, w dzień lub w nocy, w celu uzyskania wskazówek, pomocy awaryjnej lub po prostu omówienia obaw. Regularne przeglądy zapewniają, że zarówno Ty, jak i Twój klient jesteście zadowoleni z układu.', NULL, 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'Can I choose where I work and who I care for?', 'Yes, you have significant input in your placements. During your induction and throughout your career with us, we discuss your preferences in detail including preferred locations (urban/rural, specific regions, proximity to your home), types of care you\'re comfortable with (dementia care, physical disabilities, general elderly care, etc.), working patterns that suit your lifestyle, and any specific requirements like pets, non-smoking homes, or dietary preferences. While we can\'t guarantee every single preference, we work diligently to match you with clients and locations that align with your skills, experience, and personal preferences. You\'ll always have the opportunity to speak with the client or their family, learn about their needs and home environment, and ask questions before accepting any assignment. You\'re never pressured to accept a placement you\'re uncomfortable with.', 'Czy mogę wybrać, gdzie pracuję i o kogo się opiekuję?', NULL, 'Tak, masz znaczący wpływ na swoje miejsca pracy. Podczas Twojego wprowadzenia i przez całą karierę z nami szczegółowo omawiamy Twoje preferencje, w tym preferowane lokalizacje (miejskie/wiejskie, określone regiony, bliskość Twojego domu), rodzaje opieki, z którymi czujesz się komfortowo (opieka nad osobami z demencją, niepełnosprawności fizyczne, ogólna opieka nad osobami starszymi itp.), wzorce pracy odpowiadające Twojemu stylowi życia oraz wszelkie specyficzne wymagania, takie jak zwierzęta domowe, domy dla niepalących lub preferencje dietetyczne. Chociaż nie możemy zagwarantować każdej preferencji, ciężko pracujemy, aby dopasować Cię do klientów i lokalizacji zgodnych z Twoimi umiejętnościami, doświadczeniem i osobistymi preferencjami. Zawsze będziesz mieć możliwość rozmowy z klientem lub jego rodziną, poznania ich potrzeb i środowiska domowego oraz zadawania pytań przed przyjęciem jakiegokolwiek zlecenia. Nigdy nie jesteś zmuszany do przyjęcia miejsca pracy, z którym czujesz się niekomfortowo.', NULL, 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'How much will I earn as a live-in carer?', 'Live-in carers at Helping Hands earn between £800 and £1,200 per week, depending on your experience, qualifications, location, and the specific care needs of the client. This competitive rate is paid weekly via PAYE with all taxes and National Insurance handled by us. Remember, your accommodation and all meals are provided free of charge, meaning your salary is genuinely disposable income. You can save significantly compared to other jobs. You also receive statutory paid holiday entitlement, sick pay, and pension contributions. Many of our carers save substantial amounts each year due to the lack of rent, utility bills, and daily living expenses. We conduct regular pay reviews and recognize experience and additional qualifications with salary increases.', 'Ile zarobię jako opiekun domowy?', NULL, 'Opiekunowie domowi w Helping Hands zarabiają od £800 do £1,200 tygodniowo, w zależności od Twojego doświadczenia, kwalifikacji, lokalizacji i specyficznych potrzeb opiekuńczych klienta. Ta konkurencyjna stawka jest wypłacana tygodniowo za pośrednictwem PAYE z wszystkimi podatkami i ubezpieczeniem społecznym obsługiwanym przez nas. Pamiętaj, że Twoje zakwaterowanie i wszystkie posiłki są zapewniane bezpłatnie, co oznacza, że Twoja pensja jest naprawdę dochodem do dyspozycji. Możesz zaoszczędzić znacznie w porównaniu z innymi pracami. Otrzymujesz również ustawowe płatne uprawnienie do urlopu, zasiłek chorobowy i składki emerytalne. Wielu naszych opiekunów oszczędza znaczne kwoty każdego roku ze względu na brak czynszu, rachunków za media i codziennych kosztów utrzymania. Prowadzimy regularne przeglądy wynagrodzeń i uznajemy doświadczenie i dodatkowe kwalifikacje podwyżkami płac.', NULL, 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'What training is provided and is there a cost?', 'All training at Helping Hands is completely free - we invest in your development at no cost to you. Every new carer receives comprehensive, CQC-registered induction training covering essential care skills, health and safety, safeguarding, first aid, medication administration, infection control, dementia awareness, and much more. This paid training typically takes place over several days before your first placement. Throughout your career with us, you\'ll receive ongoing training including annual mandatory refresher courses, specialist training for specific care needs (Parkinson\'s, stroke recovery, diabetes management, etc.), and opportunities to gain recognized qualifications like NVQ Level 2 and 3 in Health and Social Care. We also offer mentorship programs, advanced care training, and pathways to leadership roles. All training is paid time, and we cover any travel or accommodation costs if required.', 'Jakie szkolenie jest zapewniane i czy wiąże się z kosztami?', NULL, 'Wszystkie szkolenia w Helping Hands są całkowicie bezpłatne - inwestujemy w Twój rozwój bez żadnych kosztów dla Ciebie. Każdy nowy opiekun otrzymuje kompleksowe szkolenie wprowadzające zarejestrowane przez CQC obejmujące niezbędne umiejętności opiekuńcze, zdrowie i bezpieczeństwo, ochronę, pierwszą pomoc, podawanie leków, kontrolę infekcji, świadomość demencji i wiele więcej. To płatne szkolenie zazwyczaj odbywa się przez kilka dni przed Twoim pierwszym zleceniem. Przez całą karierę z nami będziesz otrzymywać bieżące szkolenia, w tym coroczne obowiązkowe kursy odświeżające, szkolenia specjalistyczne dla specyficznych potrzeb opiekuńczych (Parkinson, powrót do zdrowia po udarze, zarządzanie cukrzycą itp.) oraz możliwości zdobycia uznanych kwalifikacji, takich jak NVQ Level 2 i 3 w zakresie zdrowia i opieki społecznej. Oferujemy również programy mentorskie, zaawansowane szkolenia opiekuńcze i ścieżki do ról przywódczych. Całe szkolenie jest płatnym czasem i pokrywamy wszelkie koszty podróży lub zakwaterowania, jeśli jest to wymagane.', NULL, 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'How quickly can I start working after applying?', 'The timeline from application to your first placement typically takes 2-4 weeks, though it can be faster if you already have an enhanced DBS certificate and relevant care qualifications. The process includes: initial application review (1-2 days), telephone or video interview (usually within a week), face-to-face interview and assessment, reference checks (1-2 weeks), enhanced DBS check (1-3 weeks, can run concurrently), right to work verification, comprehensive paid induction training (2-5 days), and finally matching with your first client and placement. We keep you fully informed at every stage and work to get you started as quickly as possible while ensuring all necessary checks and training are thorough. If you\'re currently working elsewhere, we\'re happy to schedule around your notice period. Some carers with existing qualifications and clearances have started within a week.', 'Jak szybko mogę rozpocząć pracę po aplikacji?', NULL, 'Czas od aplikacji do Twojego pierwszego zlecenia zazwyczaj wynosi 2-4 tygodnie, chociaż może być szybszy, jeśli już posiadasz rozszerzony certyfikat DBS i odpowiednie kwalifikacje opiekuńcze. Proces obejmuje: wstępny przegląd aplikacji (1-2 dni), rozmowę telefoniczną lub wideo (zazwyczaj w ciągu tygodnia), osobistą rozmowę kwalifikacyjną i ocenę, sprawdzanie referencji (1-2 tygodnie), rozszerzone sprawdzenie DBS (1-3 tygodnie, może przebiegać równocześnie), weryfikację prawa do pracy, kompleksowe płatne szkolenie wprowadzające (2-5 dni) i wreszcie dopasowanie do Twojego pierwszego klienta i miejsca pracy. Informujemy Cię na każdym etapie i pracujemy, aby rozpocząć tak szybko, jak to możliwe, jednocześnie zapewniając, że wszystkie niezbędne sprawdzenia i szkolenia są dokładne. Jeśli obecnie pracujesz gdzie indziej, chętnie zaplanujemy to zgodnie z Twoim okresem wypowiedzenia. Niektórzy opiekunowie z istniejącymi kwalifikacjami i zezwoleniami rozpoczęli w ciągu tygodnia.', NULL, 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'What happens if I don\'t get along with a client or want to change placement?', 'Your comfort and job satisfaction are important to us. While we carefully match carers and clients to ensure compatibility, we understand that occasionally placements don\'t work out as expected. If you\'re experiencing difficulties, contact your care coordinator immediately - we can often resolve issues through communication and support. If a placement genuinely isn\'t right for you, we will work to find you an alternative placement as quickly as possible. You\'re never expected to remain in a situation where you feel uncomfortable, unsafe, or unhappy. We conduct regular reviews during placements to catch and address any concerns early. Many carers stay with the same client for months or even years, building wonderful relationships, but when change is needed, we handle it professionally and promptly.', 'Co się stanie, jeśli nie dogaduję się z klientem lub chcę zmienić miejsce pracy?', NULL, 'Twój komfort i satysfakcja z pracy są dla nas ważne. Chociaż starannie dopasowujemy opiekunów i klientów, aby zapewnić kompatybilność, rozumiemy, że czasami miejsca pracy nie sprawdzają się zgodnie z oczekiwaniami. Jeśli doświadczasz trudności, natychmiast skontaktuj się ze swoim koordynatorem opieki - często możemy rozwiązać problemy poprzez komunikację i wsparcie. Jeśli miejsce pracy naprawdę nie jest dla Ciebie odpowiednie, będziemy pracować, aby znaleźć Ci alternatywne miejsce pracy tak szybko, jak to możliwe. Nigdy nie oczekuje się, że pozostaniesz w sytuacji, w której czujesz się niekomfortowo, niebezpiecznie lub nieszczęśliwy. Prowadzimy regularne przeglądy podczas miejsc pracy, aby wcześnie wyłapać i rozwiązać wszelkie obawy. Wielu opiekunów pozostaje z tym samym klientem przez miesiące, a nawet lata, budując wspaniałe relacje, ale gdy zmiana jest potrzebna, obsługujemy to profesjonalnie i szybko.', NULL, 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Do I need to have a driving license?', 'A driving license is not essential for all live-in care positions, but it can significantly increase your placement opportunities. Many clients live in rural or suburban areas where having a car is beneficial for shopping trips, appointments, and social outings. If you do drive, you can use the client\'s vehicle (with proper insurance arranged) or your own car with mileage expenses reimbursed for client-related journeys. However, we also have many placements in urban areas with good public transport, or where clients have family members who assist with transport, or where clients don\'t require regular outings. During the matching process, we consider your transport situation and find placements that work for you.', 'Czy muszę mieć prawo jazdy?', NULL, 'Prawo jazdy nie jest niezbędne dla wszystkich stanowisk opieki domowej, ale może znacznie zwiększyć Twoje możliwości zatrudnienia. Wielu klientów mieszka na obszarach wiejskich lub podmiejskich, gdzie posiadanie samochodu jest korzystne dla wycieczek na zakupy, wizyt i wyjść towarzyskich. Jeśli prowadzisz, możesz używać pojazdu klienta (z odpowiednim ubezpieczeniem) lub własnego samochodu ze zwrotem kosztów przejazdu za podróże związane z klientem. Jednak mamy również wiele miejsc pracy w obszarach miejskich z dobrym transportem publicznym lub gdzie klienci mają członków rodziny, którzy pomagają w transporcie, lub gdzie klienci nie wymagają regularnych wyjazdów. Podczas procesu dopasowywania uwzględniamy Twoją sytuację transportową i znajdujemy miejsca pracy, które dla Ciebie działają.', NULL, 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'What are the career development opportunities?', 'Helping Hands is committed to supporting your long-term career growth. We offer clear progression pathways including advancement to senior live-in carer roles with higher pay and more complex cases, specialist positions in dementia care, palliative care, or specific conditions, care coordinator roles supporting other carers, training and mentoring positions, and opportunities in our regional offices in recruitment, quality assurance, or operations. We fund relevant qualifications and provide leadership development programs. Many of our senior staff and managers started as live-in carers and progressed through the organization. We actively promote from within and invest in developing talented, committed carers who want to build long-term careers in care.', 'Jakie są możliwości rozwoju kariery?', NULL, 'Helping Hands jest zaangażowany we wspieranie Twojego długoterminowego rozwoju kariery. Oferujemy jasne ścieżki awansu, w tym awans do stanowisk starszych opiekunów domowych z wyższą płacą i bardziej złożonymi przypadkami, stanowiska specjalistyczne w opiece nad osobami z demencją, opiece paliatywnej lub określonych stanach, role koordynatorów opieki wspierających innych opiekunów, stanowiska szkoleniowe i mentorskie oraz możliwości w naszych biurach regionalnych w rekrutacji, zapewnieniu jakości lub operacjach. Finansujemy odpowiednie kwalifikacje i zapewniamy programy rozwoju przywództwa. Wielu naszych starszych pracowników i menedżerów zaczynało jako opiekunowie domowi i rozwijało się przez organizację. Aktywnie promujemy z wewnątrz i inwestujemy w rozwijanie utalentowanych, zaangażowanych opiekunów, którzy chcą budować długoterminowe kariery w opiece.', NULL, 13, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'What if I need time off for emergencies or illness?', 'We understand that life is unpredictable and emergencies happen. If you become ill during a placement, contact us immediately and we\'ll arrange cover so you can rest and recover. You\'re entitled to statutory sick pay when unwell. For family emergencies or urgent personal matters, we work to arrange emergency cover quickly so you can attend to what\'s important. We have a network of relief carers and support staff for such situations. For planned time off beyond your regular break schedule (weddings, important events, extended travel), discuss this with your care coordinator as early as possible and we\'ll do our best to accommodate your needs while ensuring client care continuity. Your wellbeing matters, and we support you through difficult times.', 'Co się stanie, jeśli będę potrzebować czasu wolnego na wypadek nagłych wypadków lub choroby?', NULL, 'Rozumiemy, że życie jest nieprzewidywalne i zdarzają się nagłe wypadki. Jeśli zachorujesz podczas zlecenia, natychmiast się z nami skontaktuj, a zorganizujemy zastępstwo, abyś mógł odpocząć i wyzdrowieć. Przysługuje Ci ustawowy zasiłek chorobowy, gdy jesteś chory. W przypadku nagłych wypadków rodzinnych lub pilnych spraw osobistych pracujemy, aby szybko zorganizować zastępstwo awaryjne, abyś mógł zająć się tym, co ważne. Mamy sieć opiekunów zastępczych i personelu wsparcia w takich sytuacjach. W przypadku planowanego czasu wolnego poza regularnym harmonogramem przerw (wesela, ważne wydarzenia, dłuższe podróże) omów to ze swoim koordynatorem opieki tak wcześnie, jak to możliwe, a my zrobimy wszystko, co w naszej mocy, aby spełnić Twoje potrzeby, jednocześnie zapewniając ciągłość opieki nad klientem. Twoje dobre samopoczucie ma znaczenie i wspieramy Cię w trudnych czasach.', NULL, 14, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'Is CQC registration required and will you help me get it?', 'CQC (Care Quality Commission) registration is not required for individual carers - it\'s the care provider organization (Helping Hands) that must be CQC registered, and we are fully registered and regularly inspected. However, you will need to complete CQC-compliant training, which we provide free of charge as part of your induction. This training meets all CQC standards and requirements for care workers. We handle all regulatory compliance, inspections, and quality assurance processes. You\'ll be working under our CQC registration, giving clients and their families confidence in the quality of care provided. All you need to focus on is delivering compassionate, professional care - we take care of all the regulatory requirements.', 'Czy wymagana jest rejestracja CQC i czy pomożecie mi ją uzyskać?', NULL, 'Rejestracja CQC (Care Quality Commission) nie jest wymagana dla poszczególnych opiekunów - to organizacja dostawcy opieki (Helping Hands) musi być zarejestrowana w CQC, a my jesteśmy w pełni zarejestrowani i regularnie kontrolowani. Jednak będziesz musiał ukończyć szkolenie zgodne z CQC, które zapewniamy bezpłatnie w ramach Twojego wprowadzenia. To szkolenie spełnia wszystkie standardy i wymagania CQC dla pracowników opieki. Zajmujemy się wszystkimi procesami zgodności z przepisami, kontrolami i zapewnieniem jakości. Będziesz pracować pod naszą rejestracją CQC, dając klientom i ich rodzinom pewność co do jakości świadczonej opieki. Wszystko, na czym musisz się skupić, to świadczenie współczującej, profesjonalnej opieki - my zajmujemy się wszystkimi wymogami regulacyjnymi.', NULL, 15, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `experience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qualifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `has_right_to_work` tinyint(1) NOT NULL DEFAULT '0',
  `has_driving_license` tinyint(1) NOT NULL DEFAULT '0',
  `cv_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_positions`
--

CREATE TABLE `job_positions` (
  `id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_pl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_pl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_pl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full-time',
  `salary_min` decimal(10,2) DEFAULT NULL,
  `salary_max` decimal(10,2) DEFAULT NULL,
  `requirements_en` text COLLATE utf8mb4_unicode_ci,
  `requirements_pl` text COLLATE utf8mb4_unicode_ci,
  `responsibilities_en` text COLLATE utf8mb4_unicode_ci,
  `responsibilities_pl` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(10, '2025_10_06_102500_create_settings_table', 1),
(11, '2025_10_06_184038_create_job_positions_table', 2),
(12, '2025_10_07_061611_create_seo_settings_table', 3),
(13, '2025_10_07_124147_add_role_to_users_table', 4),
(14, '2025_10_07_124148_create_jobs_table', 4),
(15, '2025_10_07_124149_create_job_applications_table', 4),
(16, '2025_10_07_124149_create_news_articles_table', 4),
(17, '2025_10_07_124403_rename_jobs_to_care_jobs_table', 4),
(18, '2025_10_07_161954_create_sessions_table', 4),
(19, '2025_10_07_174410_add_dutch_language_support_to_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE `news_articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_pl` varchar(255) DEFAULT NULL,
  `title_nl` varchar(255) DEFAULT NULL,
  `excerpt_en` text,
  `excerpt_pl` text,
  `excerpt_nl` text,
  `content_en` longtext,
  `content_pl` longtext,
  `content_nl` longtext,
  `category_en` varchar(100) DEFAULT NULL,
  `category_pl` varchar(100) DEFAULT NULL,
  `category_nl` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`id`, `title_en`, `title_pl`, `title_nl`, `excerpt_en`, `excerpt_pl`, `excerpt_nl`, `content_en`, `content_pl`, `content_nl`, `category_en`, `category_pl`, `category_nl`, `date`, `slug`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Celebrating Excellence in Care', 'Świętujemy doskonałość w opiece', 'Excellentie in zorg vieren', 'Our team\'s dedication to providing outstanding personalized care continues to set new standards in the home care industry.', 'Zaangażowanie naszego zespołu w zapewnianie wybitnej spersonalizowanej opieki nadal ustanawia nowe standardy w branży opieki domowej.', 'De toewijding van ons team om uitstekende gepersonaliseerde zorg te bieden, blijft nieuwe normen stellen in de thuiszorgsector.', NULL, NULL, NULL, 'Awards', 'Nagrody', 'Prijzen', 'March 2025', 'celebrating-excellence-in-care', 1, '2025-10-08 04:59:14', '2025-10-08 04:59:14'),
(2, 'Understanding Dementia Care at Home', 'Zrozumienie opieki nad osobami z demencją w domu', 'Dementiezorg thuis begrijpen', 'Discover why home care can be a better alternative to residential care for those living with dementia.', 'Odkryj, dlaczego opieka domowa może być lepszą alternatywą dla opieki stacjonarnej dla osób żyjących z demencją.', 'Ontdek waarom thuiszorg een beter alternatief kan zijn voor residentiële zorg voor mensen met dementie.', NULL, NULL, NULL, 'Care Insights', 'Wgląd w opiekę', 'Zorg inzichten', 'February 2025', 'understanding-dementia-care-at-home', 1, '2025-10-08 04:59:14', '2025-10-08 04:59:14'),
(3, 'Technology in Home Care', 'Technologia w opiece domowej', 'Technologie in thuiszorg', 'How we\'re embracing innovative technology to enhance the quality of care we provide to our clients.', 'Jak wykorzystujemy innowacyjną technologię, aby poprawić jakość opieki, którą zapewniamy naszym klientom.', 'Hoe we innovatieve technologie omarmen om de kwaliteit van de zorg die we aan onze cliënten bieden te verbeteren.', NULL, NULL, NULL, 'Innovation', 'Innowacje', 'Innovatie', 'January 2025', 'technology-in-home-care', 1, '2025-10-08 04:59:14', '2025-10-08 04:59:14'),
(4, 'Supporting Complex Care Needs', 'Wsparcie złożonych potrzeb opiekuńczych', 'Ondersteuning van complexe zorgbehoeften', 'Our commitment to providing specialized care for individuals with complex medical conditions.', 'Nasze zaangażowanie w zapewnienie specjalistycznej opieki osobom ze złożonymi schorzeniami.', 'Onze toewijding om gespecialiseerde zorg te bieden voor personen met complexe medische aandoeningen.', NULL, NULL, NULL, 'Care Services', 'Usługi opiekuńcze', 'Zorgdiensten', 'December 2024', 'supporting-complex-care-needs', 1, '2025-10-08 04:59:14', '2025-10-08 04:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_pl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_en` text COLLATE utf8mb4_unicode_ci,
  `meta_description_pl` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords_en` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords_pl` text COLLATE utf8mb4_unicode_ci,
  `og_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title_pl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description_en` text COLLATE utf8mb4_unicode_ci,
  `og_description_pl` text COLLATE utf8mb4_unicode_ci,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_markup` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jvs5CmlOweUBhHlHchiMKt8GXnaz0VE4ur9Bidv7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRTdjTHJCSjczRnNOcEFITnZGT1QxamdoYUZIYkdqeU9IeHYzdXcyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1759901665),
('qu3HE3w135Ax9FIXjS3D6ANljjapCDqYWq9SHrNG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaE03NEduNkJzUldCRlBlREdrVXNTM0RPRUtjWVdISXk3dHFaRk8xayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1759899951),
('QwStJtkfgaZMJjgnQkezzaopW6Kku3YFSXmgt3tF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXBDZkEzSEU2TjZoaXBVek1kQzlNcElQeVhMZktJaVB0a2FEYlZEWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1759899821);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `value_pl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `value_nl` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value_en`, `value_pl`, `value_nl`, `type`, `group`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Sunrise & Sunset Home Care', 'Sunrise & Sunset Home Care', NULL, 'text', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'site_tagline', 'Compassionate Care, Rewarding Careers', 'Opieka z Sercem, Satysfakcjonująca Kariera', NULL, 'text', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'contact_phone', '+44 20 3239 1227', '+44 20 3239 1227', NULL, 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'contact_email', 'recruitment@helpinghands.co.uk', 'recruitment@helpinghands.co.uk', NULL, 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'company_address', 'Sunrise & Sunset Home Care Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, United Kingdom', 'Sunrise & Sunset Home Care Home Care Ltd, Cardinal Square, 10 Nottingham Road, Derby, DE1 3QT, Wielka Brytania', NULL, 'textarea', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'footer_text', 'Sunrise & Sunset Home Care is a leading provider of live-in care services across the UK. We are dedicated to supporting our carers with comprehensive CQC-registered training, competitive pay packages, and continuous professional development opportunities. Join our community of compassionate care professionals and build a truly rewarding career while making a meaningful difference in people\'s lives every single day.', 'Sunrise & Sunset Home Care jest wiodącym dostawcą usług opieki domowej w całej Wielkiej Brytanii. Jesteśmy zaangażowani we wspieranie naszych opiekunów kompleksowymi szkoleniami zarejestrowanymi przez CQC, konkurencyjnymi pakietami wynagrodzeń i ciągłymi możliwościami rozwoju zawodowego. Dołącz do naszej społeczności współczujących profesjonalistów opieki i zbuduj prawdziwie satysfakcjonującą karierę, wprowadzając znaczącą zmianę w życiu ludzi każdego dnia.', NULL, 'textarea', 'general', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'office_hours', 'Monday - Friday: 8:00 AM - 6:00 PM\\nSaturday: 9:00 AM - 5:00 PM\\nSunday: 10:00 AM - 4:00 PM\\n24/7 Emergency Support Available for All Carers', 'Poniedziałek - Piątek: 8:00 - 18:00\\nSobota: 9:00 - 17:00\\nNiedziela: 10:00 - 16:00\\nDostępne całodobowe wsparcie awaryjne dla wszystkich opiekunów', NULL, 'textarea', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'social_facebook', 'https://facebook.com/helpinghandshomecare', 'https://facebook.com/helpinghandshomecare', NULL, 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'social_linkedin', 'https://linkedin.com/company/helping-hands-home-care', 'https://linkedin.com/company/helping-hands-home-care', NULL, 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'social_instagram', 'https://instagram.com/helpinghandshomecare', 'https://instagram.com/helpinghandshomecare', NULL, 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'social_twitter', 'https://twitter.com/helpinghands_uk', 'https://twitter.com/helpinghands_uk', NULL, 'text', 'social', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'meta_description', 'Join Sunrise & Sunset Home Care as a live-in carer and build a rewarding career. Earn £800-£1,200 per week with free accommodation, meals, comprehensive CQC training, healthcare benefits, and flexible working patterns. Apply now and make a real difference.', 'Dołącz do Sunrise & Sunset Home Care jako opiekun domowy i zbuduj satysfakcjonującą karierę. Zarabiaj £800-£1,200 tygodniowo z bezpłatnym zakwaterowaniem, wyżywieniem, kompleksowym szkoleniem CQC, świadczeniami zdrowotnymi i elastycznymi warunkami pracy. Aplikuj teraz i wprowadź prawdziwą zmianę.', NULL, 'textarea', 'seo', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'meta_keywords', 'live-in care jobs, carer jobs UK, care work, live-in carer, elderly care, home care jobs, care assistant jobs, CQC registered training, care career', 'praca w opiece domowej, praca opiekuna Wielka Brytania, praca w opiece, opiekun domowy, opieka nad osobami starszymi, praca w opiece domowej, szkolenie zarejestrowane CQC, kariera w opiece', NULL, 'text', 'seo', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'application_email', 'careers@helpinghands.co.uk', 'careers@helpinghands.co.uk', NULL, 'text', 'applications', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'whatsapp_number', '+44 7700 900456', '+44 7700 900456', NULL, 'text', 'contact', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(16, 'company_registration', 'Registered in England and Wales. Company No: 2538623. Care Quality Commission (CQC) Registered Provider. Regulated by the Care Quality Commission.', 'Zarejestrowany w Anglii i Walii. Numer firmy: 2538623. Zarejestrowany dostawca Care Quality Commission (CQC). Regulowany przez Care Quality Commission.', NULL, 'text', 'legal', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(17, 'vat_number', 'VAT Registration No: GB 365 8859 33', 'Numer VAT: GB 365 8859 33', NULL, 'text', 'legal', '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(18, 'home_hero_title', 'Live-in care, your way.', 'Opieka w domu, na Twój sposób.', 'Thuiszorg, op jouw manier.', 'text', 'home_hero', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(19, 'home_hero_subtitle', 'Sunrise & Sunset Home Care provides a trusted, nurse-led live-in care service', 'Sunrise & Sunset Home Care zapewnia zaufaną, kierowaną przez pielęgniarki usługę opieki w domu', 'Sunrise & Sunset Home Care biedt een betrouwbare, door verpleegkundigen geleide thuiszorgdienst', 'text', 'home_hero', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(20, 'home_hero_description', 'Serving London and surrounding areas with compassionate, personalized care', 'Obsługujemy Londyn i okolice z opieką pełną współczucia i dostosowaną do indywidualnych potrzeb', 'Wij bedienen Londen en omgeving met meelevende, gepersonaliseerde zorg', 'text', 'home_hero', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(21, 'home_hero_cta', 'Find out more', 'Dowiedz się więcej', 'Kom meer te weten', 'text', 'home_hero', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(22, 'home_why_choose_title', 'Why choose us?', 'Dlaczego my?', 'Waarom kiezen voor ons?', 'text', 'home_why_choose', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(23, 'home_why_choose_p1', 'At Sunrise & Sunset Home Care, we understand that choosing care is a deeply personal decision. That\'s why we focus on carefully matching our dedicated care professionals with each client\'s unique needs and personality.', 'W Sunrise & Sunset Home Care rozumiemy, że wybór opieki to głęboko osobista decyzja. Dlatego skupiamy się na starannym dopasowywaniu naszych oddanych specjalistów do unikalnych potrzeb i osobowości każdego klienta.', 'Bij Sunrise & Sunset Home Care begrijpen we dat het kiezen van zorg een zeer persoonlijke beslissing is. Daarom richten we ons op het zorgvuldig matchen van onze toegewijde zorgprofessionals met de unieke behoeften en persoonlijkheid van elke cliënt.', 'textarea', 'home_why_choose', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(24, 'home_why_choose_p2', 'Our nurse-led approach ensures the highest quality of care, while our commitment to personalized service means you or your loved one will receive attention that truly makes a difference.', 'Nasze podejście kierowane przez pielęgniarki zapewnia najwyższą jakość opieki, a nasze zaangażowanie w spersonalizowaną usługę oznacza, że Ty lub Twoi bliscy otrzymacie uwagę, która naprawdę robi różnicę.', 'Onze door verpleegkundigen geleide aanpak garandeert zorg van de hoogste kwaliteit, terwijl onze toewijding aan gepersonaliseerde service betekent dat u of uw dierbare aandacht ontvangt die echt het verschil maakt.', 'textarea', 'home_why_choose', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(25, 'home_why_choose_cta', 'Learn about our services', 'Poznaj nasze usługi', 'Leer meer over onze diensten', 'text', 'home_why_choose', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(26, 'home_career_title', 'A care career like no other', 'Kariera w opiece, jakiej nie ma nigdzie indziej', 'Een zorgcarrière als geen ander', 'text', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(27, 'home_career_p1', 'Join our team of dedicated care professionals and embark on a rewarding career that truly makes a difference in people\'s lives.', 'Dołącz do naszego zespołu oddanych specjalistów ds. opieki i rozpocznij satysfakcjonującą karierę, która naprawdę robi różnicę w życiu ludzi.', 'Sluit je aan bij ons team van toegewijde zorgprofessionals en begin aan een lonende carrière die echt het verschil maakt in het leven van mensen.', 'textarea', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(28, 'home_career_p2', 'We offer competitive pay, comprehensive training, and ongoing support. Whether you\'re experienced in care or looking to start a new career path, we provide everything you need to succeed.', 'Oferujemy konkurencyjne wynagrodzenie, kompleksowe szkolenie i ciągłe wsparcie. Niezależnie od tego, czy masz doświadczenie w opiece, czy szukasz nowej ścieżki kariery, zapewniamy wszystko, czego potrzebujesz, aby odnieść sukces.', 'We bieden concurrerende beloning, uitgebreide training en voortdurende ondersteuning. Of je nu ervaring hebt in de zorg of op zoek bent naar een nieuw carrièrepad, wij bieden alles wat je nodig hebt om te slagen.', 'textarea', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(29, 'home_career_benefit_1', '£750-£950 per week with excellent benefits', '£750-£950 tygodniowo z doskonałymi benefitami', '£750-£950 per week met uitstekende voorzieningen', 'text', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(30, 'home_career_benefit_2', 'Comprehensive training and development', 'Kompleksowe szkolenia i rozwój', 'Uitgebreide training en ontwikkeling', 'text', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(31, 'home_career_benefit_3', '24/7 support from our dedicated team', 'Wsparcie 24/7 od naszego oddanego zespołu', '24/7 ondersteuning van ons toegewijde team', 'text', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(32, 'home_career_cta', 'Explore career opportunities', 'Poznaj możliwości kariery', 'Ontdek carrièremogelijkheden', 'text', 'home_career', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(33, 'home_service_area_title', 'Live-in care in London and beyond', 'Opieka w domu w Londynie i okolicach', 'Thuiszorg in Londen en daarbuiten', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(34, 'home_service_area_p1', 'We\'ve been providing exceptional live-in care services across London and the surrounding areas, helping people maintain their independence and quality of life in the comfort of their own homes.', 'Świadczymy wyjątkowe usługi opieki w domu w Londynie i okolicach, pomagając ludziom zachować niezależność i jakość życia w komforcie własnego domu.', 'We bieden al jaren uitzonderlijke thuiszorgdiensten in Londen en omgeving, waarbij we mensen helpen hun onafhankelijkheid en levenskwaliteit te behouden in het comfort van hun eigen huis.', 'textarea', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(35, 'home_service_area_p2', 'Our focus is on ensuring safety, contentment, and autonomy for every client. We understand that home is where the heart is, and we\'re committed to helping you or your loved one stay there with the support you need.', 'Koncentrujemy się na zapewnieniu bezpieczeństwa, zadowolenia i autonomii każdemu klientowi. Rozumiemy, że dom jest miejscem, gdzie jest serce, i jesteśmy zobowiązani do pomocy Tobie lub Twoim bliskim w pozostaniu tam z wsparciem, którego potrzebują.', 'Onze focus ligt op het waarborgen van veiligheid, tevredenheid en autonomie voor elke cliënt. We begrijpen dat thuis is waar het hart is, en we zijn toegewijd om u of uw dierbare te helpen daar te blijven met de ondersteuning die u nodig hebt.', 'textarea', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(36, 'home_service_area_stat_1_value', '24/7', '24/7', '24/7', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(37, 'home_service_area_stat_1_label', 'Support Available', 'Dostępne wsparcie', 'Ondersteuning beschikbaar', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(38, 'home_service_area_stat_2_value', '100%', '100%', '100%', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(39, 'home_service_area_stat_2_label', 'Personalized Care', 'Spersonalizowana opieka', 'Persoonlijke zorg', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(40, 'home_service_area_stat_3_value', 'CQC', 'CQC', 'CQC', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(41, 'home_service_area_stat_3_label', 'Registered', 'Zarejestrowany', 'Geregistreerd', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(42, 'home_service_area_cta', 'Read more about our services', 'Przeczytaj więcej o naszych usługach', 'Lees meer over onze diensten', 'text', 'home_service_area', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(43, 'home_services_title', 'Our Services', 'Nasze usługi', 'Onze diensten', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(44, 'home_services_subtitle', 'Comprehensive care solutions tailored to your needs', 'Kompleksowe rozwiązania opiekuńcze dostosowane do Twoich potrzeb', 'Uitgebreide zorgoplossingen op maat van uw behoeften', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(45, 'home_services_livein_title', 'Live-in Care', 'Opieka w domu', 'Inwoondienst', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(46, 'home_services_livein_desc', '24/7 dedicated care in the comfort of your own home with a professional caregiver', 'Całodobowa dedykowana opieka w komforcie własnego domu z profesjonalnym opiekunem', '24/7 toegewijde zorg in het comfort van uw eigen huis met een professionele zorgverlener', 'textarea', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(47, 'home_services_funding_title', 'Care Funding', 'Finansowanie opieki', 'Zorgfinanciering', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(48, 'home_services_funding_desc', 'Guidance on funding options including self-funding, local authority support, and NHS CHC', 'Wskazówki dotyczące opcji finansowania, w tym samofinansowania, wsparcia władz lokalnych i NHS CHC', 'Begeleiding bij financieringsopties, waaronder zelffinanciering, lokale overheidssteun en NHS CHC', 'textarea', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(49, 'home_services_careers_title', 'Career Opportunities', 'Możliwości kariery', 'Carrièremogelijkheden', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(50, 'home_services_careers_desc', 'Join our team of dedicated professionals and make a real difference in people\'s lives', 'Dołącz do naszego zespołu oddanych profesjonalistów i wprowadź prawdziwą zmianę w życiu ludzi', 'Sluit je aan bij ons team van toegewijde professionals en maak echt het verschil in het leven van mensen', 'textarea', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(51, 'home_services_learn_more', 'Learn more', 'Dowiedz się więcej', 'Kom meer te weten', 'text', 'home_services', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(52, 'home_jobs_title', 'Current Job Opportunities', 'Aktualne oferty pracy', 'Huidige vacatures', 'text', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(53, 'home_jobs_subtitle', 'Join our team and make a real difference in people\'s lives', 'Dołącz do naszego zespołu i wprowadź prawdziwą zmianę w życiu ludzi', 'Sluit je aan bij ons team en maak echt het verschil in het leven van mensen', 'text', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(54, 'home_jobs_apply_now', 'Apply Now', 'Aplikuj teraz', 'Nu solliciteren', 'text', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(55, 'home_jobs_requirements', 'Requirements:', 'Wymagania:', 'Vereisten:', 'text', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(56, 'home_jobs_not_found', 'Can\'t find the right role? We\'re always looking for talented care professionals.', 'Nie możesz znaleźć odpowiedniej roli? Zawsze szukamy utalentowanych specjalistów ds. opieki.', 'Kan je niet de juiste rol vinden? We zijn altijd op zoek naar getalenteerde zorgprofessionals.', 'textarea', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(57, 'home_jobs_view_all', 'View all career opportunities', 'Zobacz wszystkie możliwości kariery', 'Bekijk alle carrièremogelijkheden', 'text', 'home_jobs', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(58, 'home_modal_apply_title', 'Apply for', 'Aplikuj na stanowisko', 'Solliciteer voor', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(59, 'home_modal_full_name', 'Full Name', 'Imię i nazwisko', 'Volledige naam', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(60, 'home_modal_email', 'Email Address', 'Adres e-mail', 'E-mailadres', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(61, 'home_modal_phone', 'Phone Number', 'Numer telefonu', 'Telefoonnummer', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(62, 'home_modal_experience', 'Years of Care Experience', 'Lata doświadczenia w opiece', 'Jaren ervaring in de zorg', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(63, 'home_modal_experience_select', 'Please select...', 'Proszę wybrać...', 'Selecteer alstublieft...', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(64, 'home_modal_experience_none', 'No experience', 'Brak doświadczenia', 'Geen ervaring', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(65, 'home_modal_experience_less1', 'Less than 1 year', 'Mniej niż rok', 'Minder dan 1 jaar', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(66, 'home_modal_experience_1_2', '1-2 years', '1-2 lata', '1-2 jaar', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(67, 'home_modal_experience_3_5', '3-5 years', '3-5 lat', '3-5 jaar', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(68, 'home_modal_experience_5plus', '5+ years', '5+ lat', '5+ jaar', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(69, 'home_modal_cover_letter', 'Cover Letter / Why do you want to join us?', 'List motywacyjny / Dlaczego chcesz do nas dołączyć?', 'Motivatiebrief / Waarom wil je bij ons werken?', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(70, 'home_modal_cover_letter_placeholder', 'Tell us about yourself and why you\'d be a great fit for this role...', 'Opowiedz nam o sobie i dlaczego byłbyś idealnym kandydatem na tę rolę...', 'Vertel ons over jezelf en waarom je perfect bent voor deze rol...', 'textarea', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(71, 'home_modal_cv_note', '<strong>Note:</strong> After submitting this form, please email your CV to', '<strong>Uwaga:</strong> Po przesłaniu tego formularza, wyślij swoje CV na adres', '<strong>Let op:</strong> Na het indienen van dit formulier, stuur uw CV naar', 'textarea', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(72, 'home_modal_cv_subject', 'with the subject line \"Application for', 'z tematem \"Aplikacja na stanowisko', 'met als onderwerp \"Sollicitatie voor', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(73, 'home_modal_cancel', 'Cancel', 'Anuluj', 'Annuleren', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(74, 'home_modal_submit', 'Submit Application', 'Wyślij aplikację', 'Sollicitatie indienen', 'text', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(75, 'home_modal_privacy', 'By submitting this application, you consent to us processing your data in accordance with our Privacy Policy.', 'Przesyłając tę aplikację, zgadzasz się na przetwarzanie danych osobowych zgodnie z naszą Polityką Prywatności.', 'Door deze sollicitatie in te dienen, stemt u ermee in dat wij uw gegevens verwerken in overeenstemming met ons Privacybeleid.', 'textarea', 'home_modal', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(76, 'home_final_cta_title', 'Ready to learn more about our care services?', 'Gotowy, aby dowiedzieć się więcej o naszych usługach opiekuńczych?', 'Klaar om meer te weten te komen over onze zorgdiensten?', 'text', 'home_final_cta', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(77, 'home_final_cta_subtitle', 'Contact our friendly team today for a free, no-obligation consultation', 'Skontaktuj się z naszym przyjaznym zespołem już dziś, aby uzyskać bezpłatną, niezobowiązującą konsultację', 'Neem vandaag nog contact op met ons vriendelijke team voor een gratis, vrijblijvend consult', 'text', 'home_final_cta', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(78, 'home_final_cta_call', 'Call +44 20 3239 1227', 'Zadzwoń +44 20 3239 1227', 'Bel +44 20 3239 1227', 'text', 'home_final_cta', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(79, 'home_final_cta_contact', 'Contact Us Online', 'Skontaktuj się z nami online', 'Contact ons online', 'text', 'home_final_cta', '2025-10-07 18:14:56', '2025-10-07 18:14:56'),
(80, 'home_job_1_title', 'Live-in Care Professional', 'Specjalista ds. opieki w domu', 'Inwonende zorgprofessional', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(81, 'home_job_1_location', 'London & Surrounding Areas', 'Londyn i okolice', 'Londen en omstreken', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(82, 'home_job_1_type', 'Full-time', 'Pełny etat', 'Voltijds', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(83, 'home_job_1_salary', '£750 - £950 per week', '£750 - £950 tygodniowo', '£750 - £950 per week', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(84, 'home_job_1_description', 'Join our team as a live-in care professional. Provide compassionate, personalized care to clients in their own homes.', 'Dołącz do naszego zespołu jako specjalista ds. opieki w domu. Zapewniaj współczującą, spersonalizowaną opiekę klientom w ich własnych domach.', 'Sluit je aan bij ons team als inwonende zorgprofessional. Bied meelevende, gepersonaliseerde zorg aan cliënten in hun eigen huis.', 'textarea', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(85, 'home_job_1_req_1', 'Experience in care (preferred but not essential)', 'Doświadczenie w opiece (preferowane, ale nie wymagane)', 'Ervaring in de zorg (de voorkeur, maar niet essentieel)', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(86, 'home_job_1_req_2', 'Compassionate and patient nature', 'Współczujący i cierpliwy charakter', 'Meelevend en geduldig karakter', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(87, 'home_job_1_req_3', 'Good communication skills', 'Dobre umiejętności komunikacyjne', 'Goede communicatieve vaardigheden', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(88, 'home_job_1_req_4', 'Right to work in the UK', 'Prawo do pracy w Wielkiej Brytanii', 'Recht om in het VK te werken', 'text', 'home_job_1', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(89, 'home_job_2_title', 'Senior Care Professional', 'Starszy specjalista ds. opieki', 'Senior zorgprofessional', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(90, 'home_job_2_location', 'London', 'Londyn', 'Londen', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(91, 'home_job_2_type', 'Full-time', 'Pełny etat', 'Voltijds', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(92, 'home_job_2_salary', '£850 - £1000 per week', '£850 - £1000 tygodniowo', '£850 - £1000 per week', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(93, 'home_job_2_description', 'Experienced care professional needed to provide specialized care for clients with complex needs.', 'Potrzebny doświadczony specjalista ds. opieki do zapewnienia specjalistycznej opieki klientom o złożonych potrzebach.', 'Ervaren zorgprofessional nodig om gespecialiseerde zorg te bieden aan cliënten met complexe behoeften.', 'textarea', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(94, 'home_job_2_req_1', 'Minimum 2 years care experience', 'Minimum 2 lata doświadczenia w opiece', 'Minimaal 2 jaar zorgervaring', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(95, 'home_job_2_req_2', 'NVQ Level 2 or equivalent', 'NVQ poziom 2 lub równoważny', 'NVQ niveau 2 of gelijkwaardig', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(96, 'home_job_2_req_3', 'Experience with complex care needs', 'Doświadczenie z złożonymi potrzebami opiekuńczymi', 'Ervaring met complexe zorgbehoeften', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(97, 'home_job_2_req_4', 'Excellent references', 'Doskonałe referencje', 'Uitstekende referenties', 'text', 'home_job_2', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(98, 'home_job_3_title', 'Weekend Care Professional', 'Specjalista ds. opieki weekendowej', 'Weekend zorgprofessional', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(99, 'home_job_3_location', 'London & Surrounding Areas', 'Londyn i okolice', 'Londen en omstreken', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(100, 'home_job_3_type', 'Part-time', 'Niepełny etat', 'Deeltijd', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(101, 'home_job_3_salary', '£150 - £180 per day', '£150 - £180 dziennie', '£150 - £180 per dag', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(102, 'home_job_3_description', 'Weekend care professional needed to provide respite care and support to our existing clients.', 'Potrzebny specjalista ds. opieki weekendowej do zapewnienia opieki zastępczej i wsparcia dla naszych obecnych klientów.', 'Weekend zorgprofessional nodig om respijtzorg en ondersteuning te bieden aan onze bestaande cliënten.', 'textarea', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(103, 'home_job_3_req_1', 'Flexible and reliable', 'Elastyczny i niezawodny', 'Flexibel en betrouwbaar', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(104, 'home_job_3_req_2', 'Care experience preferred', 'Doświadczenie w opiece preferowane', 'Zorgervaring de voorkeur', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(105, 'home_job_3_req_3', 'Available for weekend shifts', 'Dostępność w weekendy', 'Beschikbaar voor weekenddiensten', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(106, 'home_job_3_req_4', 'Own transport preferred', 'Własny transport preferowany', 'Eigen vervoer de voorkeur', 'text', 'home_job_3', '2025-10-07 18:14:57', '2025-10-07 18:14:57'),
(107, 'footer_about_heading', 'About Us', 'O nas', 'Over ons', 'text', 'footer_about', '2025-10-07 18:23:59', '2025-10-07 18:23:59'),
(108, 'footer_about_description', 'Sunrise & Sunset Home Care is dedicated to connecting compassionate caregivers with families who need quality live-in care. We\'re committed to building rewarding careers while providing exceptional care services.', 'Sunrise & Sunset Home Care jest dedykowany łączeniu współczujących opiekunów z rodzinami, które potrzebują wysokiej jakości opieki w domu. Jesteśmy zaangażowani w budowanie satysfakcjonujących karier, zapewniając wyjątkowe usługi opiekuńcze.', 'Sunrise & Sunset Home Care is toegewijd aan het verbinden van meelevende verzorgers met gezinnen die hoogwaardige thuiszorg nodig hebben. Wij zijn toegewijd aan het opbouwen van lonende carrières terwijl we uitzonderlijke zorgdiensten bieden.', 'textarea', 'footer_about', '2025-10-07 18:23:59', '2025-10-07 18:23:59'),
(109, 'footer_cqc_badge', 'CQC Registered', 'Zarejestrowany przez CQC', 'CQC geregistreerd', 'text', 'footer_about', '2025-10-07 18:23:59', '2025-10-07 18:23:59'),
(110, 'footer_links_heading', 'Quick Links', 'Szybkie linki', 'Snelle links', 'text', 'footer_links', '2025-10-07 18:23:59', '2025-10-07 18:23:59'),
(111, 'footer_link_browse_jobs', 'Browse Jobs', 'Przeglądaj oferty pracy', 'Bekijk vacatures', 'text', 'footer_links', '2025-10-07 18:23:59', '2025-10-07 18:23:59'),
(112, 'footer_link_apply_now', 'Apply Now', 'Aplikuj teraz', 'Nu solliciteren', 'text', 'footer_links', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(113, 'footer_link_training', 'Training', 'Szkolenie', 'Opleiding', 'text', 'footer_links', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(114, 'footer_link_faqs', 'FAQs', 'FAQ', 'Veelgestelde vragen', 'text', 'footer_links', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(115, 'footer_link_contact', 'Contact', 'Kontakt', 'Contact', 'text', 'footer_links', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(116, 'footer_contact_heading', 'Contact Info', 'Informacje kontaktowe', 'Contactinformatie', 'text', 'footer_contact', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(117, 'footer_contact_address', '123 Care Street, London, UK, SW1A 1AA', '123 Care Street, Londyn, Wielka Brytania, SW1A 1AA', '123 Care Street, Londen, VK, SW1A 1AA', 'text', 'footer_contact', '2025-10-07 18:24:00', '2025-10-07 18:24:00'),
(118, 'footer_contact_phone', '+44 20 3239 1227', '+44 20 3239 1227', '+44 20 3239 1227', 'text', 'footer_contact', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(119, 'footer_contact_email', 'info@sunrisesunsetcare.co.uk', 'info@sunrisesunsetcare.co.uk', 'info@sunrisesunsetcare.co.uk', 'text', 'footer_contact', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(120, 'footer_contact_whatsapp_label', 'WhatsApp', 'WhatsApp', 'WhatsApp', 'text', 'footer_contact', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(121, 'footer_contact_whatsapp', '+44 20 3239 1227', '+44 20 3239 1227', '+44 20 3239 1227', 'text', 'footer_contact', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(122, 'footer_social_heading', 'Follow Us', 'Śledź nas', 'Volg ons', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(123, 'footer_social_description', 'Connect with us on social media for updates and opportunities', 'Połącz się z nami w mediach społecznościowych, aby otrzymywać aktualizacje i możliwości', 'Volg ons op sociale media voor updates en kansen', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(124, 'footer_social_facebook', 'https://facebook.com', 'https://facebook.com', 'https://facebook.com', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(125, 'footer_social_twitter', 'https://twitter.com', 'https://twitter.com', 'https://twitter.com', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(126, 'footer_social_linkedin', 'https://linkedin.com', 'https://linkedin.com', 'https://linkedin.com', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(127, 'footer_social_instagram', 'https://instagram.com', 'https://instagram.com', 'https://instagram.com', 'text', 'footer_social', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(128, 'footer_copyright', 'Sunrise & Sunset Home Care. All rights reserved.', 'Sunrise & Sunset Home Care. Wszelkie prawa zastrzeżone.', 'Sunrise & Sunset Home Care. Alle rechten voorbehouden.', 'text', 'footer_legal', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(129, 'footer_legal_terms', 'Terms & Conditions', 'Regulamin', 'Algemene voorwaarden', 'text', 'footer_legal', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(130, 'footer_legal_privacy', 'Privacy Policy', 'Polityka prywatności', 'Privacybeleid', 'text', 'footer_legal', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(131, 'footer_legal_cookies', 'Cookie Policy', 'Polityka cookies', 'Cookiebeleid', 'text', 'footer_legal', '2025-10-07 18:24:01', '2025-10-07 18:24:01'),
(132, 'liveincare_hero_title', 'Trusted Nurse-led 24-Hour Live-In Care', 'Zaufana opieka 24-godzinna kierowana przez pielęgniarki', 'Vertrouwde door verpleegkundigen geleide 24-uurs thuiszorg', 'text', 'liveincare_hero', NULL, NULL),
(133, 'liveincare_hero_subtitle', 'Providing dedicated, compassionate care in the comfort of your own home', 'Zapewniamy dedykowaną, współczującą opiekę w komforcie Twojego własnego domu', 'Toegewijde, compassievolle zorg in het comfort van uw eigen huis', 'text', 'liveincare_hero', NULL, NULL),
(134, 'liveincare_hero_cta', 'Call Us:', 'Zadzwoń do nas:', 'Bel ons:', 'text', 'liveincare_hero', NULL, NULL),
(135, 'liveincare_what_title', 'What is Live-in Care?', 'Czym jest opieka domowa?', 'Wat is thuiszorg?', 'text', 'liveincare_content', NULL, NULL),
(136, 'liveincare_what_description_1', 'Live-in care involves a dedicated care professional residing with you in your home, providing 24/7 support and companionship. This comprehensive care approach helps reduce risks like falls and hospital admissions while maintaining your independence and comfort in familiar surroundings.', 'Opieka domowa polega na tym, że dedykowany opiekun mieszka z Tobą w Twoim domu, zapewniając całodobowe wsparcie i towarzystwo. To kompleksowe podejście do opieki pomaga zmniejszyć ryzyko upadków i hospitalizacji, jednocześnie zachowując Twoją niezależność i komfort w znanym otoczeniu.', 'Thuiszorg betekent dat een toegewijde zorgprofessional bij u thuis woont en 24/7 ondersteuning en gezelschap biedt. Deze uitgebreide zorgaanpak helpt risico\'s zoals vallen en ziekenhuisopnames te verminderen, terwijl u uw onafhankelijkheid en comfort in vertrouwde omgeving behoudt.', 'textarea', 'liveincare_content', NULL, NULL),
(137, 'liveincare_what_description_2', 'Our nurse-led service ensures the highest quality of care, tailored to your individual needs and preferences.', 'Nasza usługa kierowana przez pielęgniarki zapewnia najwyższą jakość opieki, dostosowaną do Twoich indywidualnych potrzeb i preferencji.', 'Onze door verpleegkundigen geleide dienst garandeert de hoogste kwaliteit zorg, afgestemd op uw individuele behoeften en voorkeuren.', 'textarea', 'liveincare_content', NULL, NULL),
(138, 'liveincare_who_title', 'Who We Care For', 'Dla kogo się opiekujemy', 'Voor wie zorgen wij', 'text', 'liveincare_content', NULL, NULL),
(139, 'liveincare_who_description', 'We provide specialized care for elderly individuals and younger people with advanced needs, including:', 'Zapewniamy specjalistyczną opiekę dla osób starszych i młodszych osób z zaawansowanymi potrzebami, w tym:', 'Wij bieden gespecialiseerde zorg voor oudere personen en jongere mensen met gevorderde behoeften, waaronder:', 'textarea', 'liveincare_content', NULL, NULL),
(140, 'liveincare_condition_spinal', 'Spinal Injuries', 'Urazy kręgosłupa', 'Ruggenmergletsel', 'text', 'liveincare_conditions', NULL, NULL),
(141, 'liveincare_condition_ms', 'Multiple Sclerosis', 'Stwardnienie rozsiane', 'Multiple Sclerose', 'text', 'liveincare_conditions', NULL, NULL),
(142, 'liveincare_condition_brain', 'Brain Injury', 'Uraz mózgu', 'Hersenletsel', 'text', 'liveincare_conditions', NULL, NULL),
(143, 'liveincare_condition_cerebral', 'Cerebral Palsy', 'Porażenie mózgowe', 'Cerebrale parese', 'text', 'liveincare_conditions', NULL, NULL),
(144, 'liveincare_condition_frailty', 'Age-related Frailty', 'Słabość związana z wiekiem', 'Leeftijdsgerelateerde kwetsbaarheid', 'text', 'liveincare_conditions', NULL, NULL),
(145, 'liveincare_condition_dementia', 'Dementia Care', 'Opieka nad osobami z demencją', 'Dementiezorg', 'text', 'liveincare_conditions', NULL, NULL),
(146, 'liveincare_tasks_title', 'Live-in Carer Tasks', 'Zadania opiekuna domowego', 'Taken van de thuiszorger', 'text', 'liveincare_tasks', NULL, NULL),
(147, 'liveincare_tasks_description', 'Our dedicated carers provide comprehensive support with:', 'Nasi dedykowani opiekunowie zapewniają kompleksowe wsparcie w zakresie:', 'Onze toegewijde zorgverleners bieden uitgebreide ondersteuning bij:', 'text', 'liveincare_tasks', NULL, NULL),
(148, 'liveincare_task_personal', 'Personal Care', 'Opieka osobista', 'Persoonlijke verzorging', 'text', 'liveincare_tasks', NULL, NULL),
(149, 'liveincare_task_medication', 'Medication Management', 'Zarządzanie lekami', 'Medicatiebeheer', 'text', 'liveincare_tasks', NULL, NULL),
(150, 'liveincare_task_cleaning', 'Home Cleaning', 'Sprzątanie domu', 'Huishouding', 'text', 'liveincare_tasks', NULL, NULL),
(151, 'liveincare_task_meals', 'Meal Preparation', 'Przygotowanie posiłków', 'Maaltijdbereiding', 'text', 'liveincare_tasks', NULL, NULL),
(152, 'liveincare_task_errands', 'Errands & Shopping', 'Sprawy i zakupy', 'Boodschappen', 'text', 'liveincare_tasks', NULL, NULL),
(153, 'liveincare_task_trips', 'Trip Arrangements', 'Organizacja wyjazdów', 'Reisarrangementen', 'text', 'liveincare_tasks', NULL, NULL),
(154, 'liveincare_task_pets', 'Pet Care', 'Opieka nad zwierzętami', 'Huisdierenzorg', 'text', 'liveincare_tasks', NULL, NULL),
(155, 'liveincare_task_healthcare', 'Healthcare Tasks', 'Zadania zdrowotne', 'Gezondheidszorgtaken', 'text', 'liveincare_tasks', NULL, NULL),
(156, 'liveincare_benefits_title', 'Benefits of Live-in Care', 'Korzyści z opieki domowej', 'Voordelen van thuiszorg', 'text', 'liveincare_benefits', NULL, NULL),
(157, 'liveincare_benefit_flexibility_title', 'Flexibility & Freedom', 'Elastyczność i wolność', 'Flexibiliteit & vrijheid', 'text', 'liveincare_benefits', NULL, NULL),
(158, 'liveincare_benefit_flexibility_desc', 'Maintain your independence and daily routines in the comfort of your own home', 'Zachowaj swoją niezależność i codzienne rutyny w komforcie własnego domu', 'Behoud uw onafhankelijkheid en dagelijkse routines in het comfort van uw eigen huis', 'text', 'liveincare_benefits', NULL, NULL),
(159, 'liveincare_benefit_familiar_title', 'Familiar Environment', 'Znane otoczenie', 'Vertrouwde omgeving', 'text', 'liveincare_benefits', NULL, NULL),
(160, 'liveincare_benefit_familiar_desc', 'Stay in your cherished home surrounded by memories and belongings', 'Pozostań w swoim ukochanym domu otoczonym wspomnieniami i rzeczami', 'Blijf in uw geliefde huis omgeven door herinneringen en bezittingen', 'text', 'liveincare_benefits', NULL, NULL),
(161, 'liveincare_benefit_personalized_title', 'Personalized Care', 'Spersonalizowana opieka', 'Gepersonaliseerde zorg', 'text', 'liveincare_benefits', NULL, NULL),
(162, 'liveincare_benefit_personalized_desc', 'Receive one-on-one attention tailored to your unique needs and preferences', 'Otrzymaj indywidualną uwagę dostosowaną do Twoich unikalnych potrzeb i preferencji', 'Ontvang individuele aandacht afgestemd op uw unieke behoeften en voorkeuren', 'text', 'liveincare_benefits', NULL, NULL),
(163, 'liveincare_benefit_consistent_title', 'Consistent Caregiver', 'Stały opiekun', 'Consistente zorgverlener', 'text', 'liveincare_benefits', NULL, NULL),
(164, 'liveincare_benefit_consistent_desc', 'Build meaningful relationships with your dedicated care professional', 'Zbuduj znaczące relacje ze swoim dedykowanym profesjonalistą opiekuńczym', 'Bouw betekenisvolle relaties op met uw toegewijde zorgprofessional', 'text', 'liveincare_benefits', NULL, NULL),
(165, 'liveincare_benefit_health_title', 'Improved Health', 'Lepsze zdrowie', 'Verbeterde gezondheid', 'text', 'liveincare_benefits', NULL, NULL),
(166, 'liveincare_benefit_health_desc', 'Better health outcomes through personalized, attentive care', 'Lepsze wyniki zdrowotne dzięki spersonalizowanej, uważnej opiece', 'Betere gezondheidsresultaten door gepersonaliseerde, aandachtige zorg', 'text', 'liveincare_benefits', NULL, NULL),
(167, 'liveincare_benefit_pets_title', 'Pet Care Support', 'Wsparcie w opiece nad zwierzętami', 'Huisdierenzorg ondersteuning', 'text', 'liveincare_benefits', NULL, NULL),
(168, 'liveincare_benefit_pets_desc', 'Keep your beloved pets with you while receiving proper care', 'Zachowaj swoje ukochane zwierzęta przy sobie, otrzymując odpowiednią opiekę', 'Houd uw geliefde huisdieren bij u terwijl u goede zorg ontvangt', 'text', 'liveincare_benefits', NULL, NULL),
(169, 'liveincare_pricing_title', 'Transparent Pricing', 'Przejrzyste ceny', 'Transparante prijzen', 'text', 'liveincare_pricing', NULL, NULL),
(170, 'liveincare_pricing_description', 'Fully managed live-in care starts from <span class=\"font-bold text-[#2563eb]\">£1,350 per week</span>', 'W pełni zarządzana opieka domowa zaczyna się od <span class=\"font-bold text-[#2563eb]\">£1,350 tygodniowo</span>', 'Volledig beheerde thuiszorg begint vanaf <span class=\"font-bold text-[#2563eb]\">£1.350 per week</span>', 'text', 'liveincare_pricing', NULL, NULL),
(171, 'liveincare_pricing_contact', 'Contact us for a free care assessment and personalized quote', 'Skontaktuj się z nami, aby uzyskać bezpłatną ocenę opieki i spersonalizowaną wycenę', 'Neem contact met ons op voor een gratis zorgbeoordeling en persoonlijke offerte', 'text', 'liveincare_pricing', NULL, NULL),
(172, 'liveincare_cta_title', 'Ready to Learn More About Our Live-in Care Services?', 'Gotowy dowiedzieć się więcej o naszych usługach opieki domowej?', 'Klaar om meer te weten te komen over onze thuiszorgdiensten?', 'text', 'liveincare_cta', NULL, NULL),
(173, 'liveincare_cta_subtitle', 'Contact us 24 hours a day for a free care assessment and quote', 'Skontaktuj się z nami 24 godziny na dobę, aby uzyskać bezpłatną ocenę opieki i wycenę', 'Neem 24 uur per dag contact met ons op voor een gratis zorgbeoordeling en offerte', 'text', 'liveincare_cta', NULL, NULL),
(174, 'liveincare_cta_button_call', 'Call', 'Zadzwoń', 'Bel', 'text', 'liveincare_cta', NULL, NULL),
(175, 'liveincare_cta_button_contact', 'Contact Us Online', 'Skontaktuj się z nami online', 'Neem online contact met ons op', 'text', 'liveincare_cta', NULL, NULL),
(176, 'carefunding_hero_title', 'Care Funding Options', 'Opcje finansowania opieki', 'Zorgfinancieringsopties', 'text', 'carefunding_hero', NULL, NULL),
(177, 'carefunding_hero_subtitle', 'Understanding how to fund your care - we\'re here to help you navigate the options', 'Zrozumienie, jak sfinansować swoją opiekę - jesteśmy tutaj, aby pomóc Ci poruszać się po opcjach', 'Begrijpen hoe u uw zorg kunt financieren - wij helpen u graag bij het navigeren door de opties', 'text', 'carefunding_hero', NULL, NULL),
(178, 'carefunding_intro_title', 'How to Fund Your Care', 'Jak sfinansować swoją opiekę', 'Hoe uw zorg te financieren', 'text', 'carefunding_intro', NULL, NULL),
(179, 'carefunding_intro_desc1', 'Funding care can seem complex, but we\'re here to guide you through the various options available. Whether you\'re considering self-funding, local authority support, or NHS Continuing Healthcare, we\'ll help you understand what\'s available to you.', 'Finansowanie opieki może wydawać się skomplikowane, ale jesteśmy tutaj, aby poprowadzić Cię przez różne dostępne opcje. Niezależnie od tego, czy rozważasz samodzielne finansowanie, wsparcie władz lokalnych czy NHS Continuing Healthcare, pomożemy Ci zrozumieć, co jest dla Ciebie dostępne.', 'Het financieren van zorg kan complex lijken, maar wij zijn er om u door de verschillende beschikbare opties te leiden. Of u nu overweegt om zelf te betalen, steun van de lokale overheid of NHS Continuing Healthcare, wij helpen u begrijpen wat er voor u beschikbaar is.', 'textarea', 'carefunding_intro', NULL, NULL),
(180, 'carefunding_intro_desc2', 'Our team can provide guidance on the most suitable funding routes based on your individual circumstances and care needs.', 'Nasz zespół może udzielić wskazówek dotyczących najbardziej odpowiednich sposobów finansowania w oparciu o Twoje indywidualne okoliczności i potrzeby opiekuńcze.', 'Ons team kan advies geven over de meest geschikte financieringsroutes op basis van uw individuele omstandigheden en zorgbehoeften.', 'textarea', 'carefunding_intro', NULL, NULL),
(181, 'carefunding_options_title', 'Funding Options Available', 'Dostępne opcje finansowania', 'Beschikbare financieringsopties', 'text', 'carefunding_options', NULL, NULL),
(182, 'carefunding_self_title', 'Self-Funding', 'Samodzielne finansowanie', 'Zelffinanciering', 'text', 'carefunding_self', NULL, NULL),
(183, 'carefunding_self_desc1', 'Many people choose to pay for their own care privately. This gives you complete control over your care choices and the flexibility to arrange services that perfectly match your needs and preferences.', 'Wiele osób decyduje się na prywatne opłacanie własnej opieki. Daje to pełną kontrolę nad wyborami opieki i elastyczność w aranżowaniu usług, które idealnie pasują do Twoich potrzeb i preferencji.', 'Veel mensen kiezen ervoor om privé voor hun eigen zorg te betalen. Dit geeft u volledige controle over uw zorgkeuzes en de flexibiliteit om diensten te regelen die perfect bij uw behoeften en voorkeuren passen.', 'textarea', 'carefunding_self', NULL, NULL),
(184, 'carefunding_self_desc2', 'If you have assets over £23,250, you\'ll likely need to self-fund your care initially. We offer transparent pricing and can provide detailed cost breakdowns to help you plan.', 'Jeśli posiadasz aktywa powyżej £23,250, prawdopodobnie będziesz musiał początkowo samodzielnie finansować swoją opiekę. Oferujemy przejrzyste ceny i możemy dostarczyć szczegółowe zestawienia kosztów, aby pomóc Ci w planowaniu.', 'Als u bezittingen heeft van meer dan £23.250, moet u waarschijnlijk aanvankelijk zelf voor uw zorg betalen. Wij bieden transparante prijzen en kunnen gedetailleerde kostenspecificaties verstrekken om u te helpen bij het plannen.', 'textarea', 'carefunding_self', NULL, NULL),
(185, 'carefunding_local_title', 'Local Authority Support', 'Wsparcie władz lokalnych', 'Ondersteuning van de lokale overheid', 'text', 'carefunding_local', NULL, NULL),
(186, 'carefunding_local_desc1', 'If your assets are below £23,250, you may be eligible for financial support from your local council. The amount of support depends on your financial assessment and care needs.', 'Jeśli Twoje aktywa są poniżej £23,250, możesz kwalifikować się do wsparcia finansowego od lokalnej rady. Wysokość wsparcia zależy od Twojej oceny finansowej i potrzeb opiekuńczych.', 'Als uw bezittingen minder dan £23.250 bedragen, komt u mogelijk in aanmerking voor financiële ondersteuning van uw gemeente. De hoeveelheid ondersteuning hangt af van uw financiële beoordeling en zorgbehoeften.', 'textarea', 'carefunding_local', NULL, NULL),
(187, 'carefunding_local_desc2', 'We can guide you through the assessment process and work with your local authority to arrange suitable care packages.', 'Możemy poprowadzić Cię przez proces oceny i współpracować z władzami lokalnymi, aby zorganizować odpowiednie pakiety opieki.', 'Wij kunnen u door het beoordelingsproces leiden en samenwerken met uw gemeente om geschikte zorgpakketten te regelen.', 'textarea', 'carefunding_local', NULL, NULL),
(188, 'carefunding_nhs_title', 'NHS Continuing Healthcare', 'Ciągła opieka zdrowotna NHS', 'NHS Continue zorg', 'text', 'carefunding_nhs', NULL, NULL),
(189, 'carefunding_nhs_desc1', 'If you have complex medical needs, you may qualify for NHS Continuing Healthcare (CHC). This is a package of care arranged and funded solely by the NHS for individuals who have ongoing healthcare needs.', 'Jeśli masz złożone potrzeby medyczne, możesz kwalifikować się do NHS Continuing Healthcare (CHC). Jest to pakiet opieki organizowany i finansowany wyłącznie przez NHS dla osób z bieżącymi potrzebami zdrowotnymi.', 'Als u complexe medische behoeften heeft, komt u mogelijk in aanmerking voor NHS Continuing Healthcare (CHC). Dit is een zorgpakket dat uitsluitend door de NHS wordt geregeld en gefinancierd voor personen met doorlopende zorgbehoeften.', 'textarea', 'carefunding_nhs', NULL, NULL),
(190, 'carefunding_nhs_desc2', 'We can support you through the CHC assessment process and provide the necessary documentation to support your application.', 'Możemy wesprzeć Cię w procesie oceny CHC i dostarczyć niezbędną dokumentację wspierającą Twoją aplikację.', 'Wij kunnen u ondersteunen bij het CHC-beoordelingsproces en de nodige documentatie verstrekken om uw aanvraag te ondersteunen.', 'textarea', 'carefunding_nhs', NULL, NULL),
(191, 'carefunding_other_title', 'Other Funding Sources', 'Inne źródła finansowania', 'Andere financieringsbronnen', 'text', 'carefunding_other', NULL, NULL),
(192, 'carefunding_other_intro', 'Additional funding options may include:', 'Dodatkowe opcje finansowania mogą obejmować:', 'Aanvullende financieringsopties kunnen zijn:', 'text', 'carefunding_other', NULL, NULL),
(193, 'carefunding_other_deferred', 'Deferred payment agreements', 'Umowy o odroczonych płatnościach', 'Uitgestelde betalingsregelingen', 'text', 'carefunding_other', NULL, NULL),
(194, 'carefunding_other_veterans', 'Veterans\' benefits and support', 'Świadczenia i wsparcie dla weteranów', 'Veteranenuitkeringen en ondersteuning', 'text', 'carefunding_other', NULL, NULL),
(195, 'carefunding_other_attendance', 'Attendance Allowance or Personal Independence Payment', 'Zasiłek opiekuńczy lub Płatność za Osobistą Niezależność', 'Aanwezigheidstoelage of Persoonlijke Onafhankelijkheidsbetaling', 'text', 'carefunding_other', NULL, NULL),
(196, 'carefunding_other_charity', 'Charity grants and support funds', 'Dotacje charytatywne i fundusze wsparcia', 'Liefdadigheidssubsidies en ondersteunende fondsen', 'text', 'carefunding_other', NULL, NULL),
(197, 'carefunding_help_title', 'How We Can Help', 'Jak możemy pomóc', 'Hoe wij kunnen helpen', 'text', 'carefunding_help', NULL, NULL),
(198, 'carefunding_help_intro', 'Our experienced team understands that navigating care funding can be overwhelming. We\'re here to support you every step of the way:', 'Nasz doświadczony zespół rozumie, że poruszanie się po finansowaniu opieki może być przytłaczające. Jesteśmy tutaj, aby wesprzeć Cię na każdym kroku:', 'Ons ervaren team begrijpt dat het navigeren door zorgfinanciering overweldigend kan zijn. Wij zijn er om u bij elke stap te ondersteunen:', 'textarea', 'carefunding_help', NULL, NULL);
INSERT INTO `settings` (`id`, `key`, `value_en`, `value_pl`, `value_nl`, `type`, `group`, `created_at`, `updated_at`) VALUES
(199, 'carefunding_help_pricing', 'Provide clear, transparent pricing information', 'Zapewnić jasne, przejrzyste informacje cenowe', 'Duidelijke, transparante prijsinformatie verstrekken', 'text', 'carefunding_help', NULL, NULL),
(200, 'carefunding_help_assessment', 'Guide you through financial assessments', 'Poprowadzić Cię przez oceny finansowe', 'U begeleiden door financiële beoordelingen', 'text', 'carefunding_help', NULL, NULL),
(201, 'carefunding_help_nhs', 'Help with NHS Continuing Healthcare applications', 'Pomóc z aplikacjami NHS Continuing Healthcare', 'Hulp bij NHS Continue zorg aanvragen', 'text', 'carefunding_help', NULL, NULL),
(202, 'carefunding_help_authority', 'Work with local authorities on your behalf', 'Współpracować z władzami lokalnymi w Twoim imieniu', 'Samenwerken met lokale overheden namens u', 'text', 'carefunding_help', NULL, NULL),
(203, 'carefunding_help_benefits', 'Identify additional funding sources and benefits you may be entitled to', 'Zidentyfikować dodatkowe źródła finansowania i świadczenia, do których możesz być uprawniony', 'Aanvullende financieringsbronnen en uitkeringen identificeren waar u recht op heeft', 'text', 'carefunding_help', NULL, NULL),
(204, 'carefunding_cta_title', 'Need Help Understanding Your Funding Options?', 'Potrzebujesz pomocy w zrozumieniu opcji finansowania?', 'Hulp nodig bij het begrijpen van uw financieringsopties?', 'text', 'carefunding_cta', NULL, NULL),
(205, 'carefunding_cta_subtitle', 'Contact us for a free consultation to discuss your care funding options', 'Skontaktuj się z nami, aby uzyskać bezpłatną konsultację w celu omówienia opcji finansowania opieki', 'Neem contact met ons op voor een gratis consultatie om uw zorgfinancieringsopties te bespreken', 'text', 'carefunding_cta', NULL, NULL),
(206, 'careers_hero_title', 'Apply for Live-In Care Jobs', 'Aplikuj na pracę jako opiekun domowy', 'Solliciteer voor thuiszorgbanen', 'text', 'careers_hero', NULL, NULL),
(207, 'careers_hero_subtitle', 'Make a positive difference in people\'s lives with a rewarding career in care', 'Zrób pozytywną różnicę w życiu ludzi dzięki satysfakcjonującej karierze w opiece', 'Maak een positief verschil in het leven van mensen met een lonende carrière in de zorg', 'text', 'careers_hero', NULL, NULL),
(208, 'careers_hero_button', 'Apply Now', 'Aplikuj teraz', 'Solliciteer nu', 'text', 'careers_hero', NULL, NULL),
(209, 'careers_benefits_title', 'Job Benefits', 'Korzyści z pracy', 'Arbeidsvoordelen', 'text', 'careers_benefits', NULL, NULL),
(210, 'careers_financial_title', 'Financial Benefits', 'Korzyści finansowe', 'Financiële voordelen', 'text', 'careers_benefits', NULL, NULL),
(211, 'careers_pay_range', '£750-£950 per week', '£750-£950 tygodniowo', '£750-£950 per week', 'text', 'careers_benefits', NULL, NULL),
(212, 'careers_pay_rates', 'Market-leading pay rates', 'Wiodące na rynku stawki', 'Marktleidende salarissen', 'text', 'careers_benefits', NULL, NULL),
(213, 'careers_pension', 'Employer pension (3% contribution)', 'Emerytura pracodawcy (3% wkładu)', 'Werkgeverspensioen (3% bijdrage)', 'text', 'careers_benefits', NULL, NULL),
(214, 'careers_bank_holidays', 'Up to double pay for bank holidays', 'Do podwójnej płacy za święta bankowe', 'Tot dubbel loon voor feestdagen', 'text', 'careers_benefits', NULL, NULL),
(215, 'careers_referral', 'Refer-a-Friend bonus up to £1000', 'Bonus za polecenie znajomego do £1000', 'Verwijs-een-vriend bonus tot £1000', 'text', 'careers_benefits', NULL, NULL),
(216, 'careers_additional_title', 'Additional Benefits', 'Dodatkowe korzyści', 'Aanvullende voordelen', 'text', 'careers_benefits', NULL, NULL),
(217, 'careers_annual_leave', 'Paid annual leave (28-34 days)', 'Płatny urlop roczny (28-34 dni)', 'Betaald jaarlijks verlof (28-34 dagen)', 'text', 'careers_benefits', NULL, NULL),
(218, 'careers_healthcare', 'BUPA Healthcare cash plan', 'Plan pieniężny BUPA Healthcare', 'BUPA Healthcare geldplan', 'text', 'careers_benefits', NULL, NULL),
(219, 'careers_dbs', 'Free DBS check', 'Bezpłatne sprawdzenie DBS', 'Gratis DBS-controle', 'text', 'careers_benefits', NULL, NULL),
(220, 'careers_support', '24/7 support from our team', 'Wsparcie 24/7 od naszego zespołu', '24/7 ondersteuning van ons team', 'text', 'careers_benefits', NULL, NULL),
(221, 'careers_travel', 'Travel expenses paid', 'Opłacone koszty podróży', 'Reiskosten betaald', 'text', 'careers_benefits', NULL, NULL),
(222, 'careers_eap', 'Employee Assistance Programme', 'Program Wsparcia Pracowników', 'Werknemersondersteuningsprogramma', 'text', 'careers_benefits', NULL, NULL),
(223, 'careers_responsibilities_title', 'Job Responsibilities', 'Obowiązki zawodowe', 'Functieverantwoordelijkheden', 'text', 'careers_responsibilities', NULL, NULL),
(224, 'careers_responsibilities_intro', 'As a live-in carer, you\'ll provide compassionate, personalized care including:', 'Jako opiekun domowy zapewnisz współczującą, spersonalizowaną opiekę, w tym:', 'Als thuiszorger biedt u compassievolle, gepersonaliseerde zorg, waaronder:', 'text', 'careers_responsibilities', NULL, NULL),
(225, 'careers_resp_personal', 'Personal care', 'Opieka osobista', 'Persoonlijke verzorging', 'text', 'careers_responsibilities', NULL, NULL),
(226, 'careers_resp_medication', 'Medication management', 'Zarządzanie lekami', 'Medicatiebeheer', 'text', 'careers_responsibilities', NULL, NULL),
(227, 'careers_resp_maintenance', 'Home maintenance', 'Utrzymanie domu', 'Huisonderhoud', 'text', 'careers_responsibilities', NULL, NULL),
(228, 'careers_resp_meals', 'Meal preparation', 'Przygotowanie posiłków', 'Maaltijdbereiding', 'text', 'careers_responsibilities', NULL, NULL),
(229, 'careers_resp_errands', 'Errands & shopping', 'Sprawy i zakupy', 'Boodschappen', 'text', 'careers_responsibilities', NULL, NULL),
(230, 'careers_resp_companion', 'Companion support', 'Wsparcie towarzysza', 'Gezelschapsondersteuning', 'text', 'careers_responsibilities', NULL, NULL),
(231, 'careers_training_title', 'Comprehensive Training', 'Kompleksowe szkolenie', 'Uitgebreide training', 'text', 'careers_training', NULL, NULL),
(232, 'careers_training_intro', 'We provide full induction and ongoing training to ensure you\'re confident and well-prepared for your role:', 'Zapewniamy pełne wprowadzenie i ciągłe szkolenia, aby zapewnić Ci pewność siebie i dobre przygotowanie do roli:', 'Wij bieden volledige introductie en doorlopende training om ervoor te zorgen dat u zelfverzekerd en goed voorbereid bent op uw rol:', 'textarea', 'careers_training', NULL, NULL),
(233, 'careers_train_role_title', 'Role Understanding', 'Zrozumienie roli', 'Rolbegrip', 'text', 'careers_training', NULL, NULL),
(234, 'careers_train_role_desc', 'Complete overview of your responsibilities', 'Pełny przegląd Twoich obowiązków', 'Volledig overzicht van uw verantwoordelijkheden', 'text', 'careers_training', NULL, NULL),
(235, 'careers_train_medication_title', 'Medication Management', 'Zarządzanie lekami', 'Medicatiebeheer', 'text', 'careers_training', NULL, NULL),
(236, 'careers_train_medication_desc', 'Safe administration and record-keeping', 'Bezpieczne podawanie i prowadzenie dokumentacji', 'Veilige toediening en administratie', 'text', 'careers_training', NULL, NULL),
(237, 'careers_train_safety_title', 'Health & Safety', 'Zdrowie i bezpieczeństwo', 'Gezondheid & veiligheid', 'text', 'careers_training', NULL, NULL),
(238, 'careers_train_safety_desc', 'Essential safety protocols and procedures', 'Niezbędne protokoły i procedury bezpieczeństwa', 'Essentiële veiligheidsprotocollen en procedures', 'text', 'careers_training', NULL, NULL),
(239, 'careers_train_firstaid_title', 'First Aid', 'Pierwsza pomoc', 'Eerste hulp', 'text', 'careers_training', NULL, NULL),
(240, 'careers_train_firstaid_desc', 'Emergency response and first aid skills', 'Reagowanie w nagłych wypadkach i umiejętności pierwszej pomocy', 'Noodrespons en eerste hulp vaardigheden', 'text', 'careers_training', NULL, NULL),
(241, 'careers_train_handling_title', 'Manual Handling', 'Obsługa ręczna', 'Handmatig hanteren', 'text', 'careers_training', NULL, NULL),
(242, 'careers_train_handling_desc', 'Safe moving and handling techniques', 'Bezpieczne techniki przenoszenia i obsługi', 'Veilige verplaatsings- en hanteringstechnieken', 'text', 'careers_training', NULL, NULL),
(243, 'careers_train_infection_title', 'Infection Control', 'Kontrola infekcji', 'Infectiecontrole', 'text', 'careers_training', NULL, NULL),
(244, 'careers_train_infection_desc', 'Prevention and control measures', 'Środki zapobiegawcze i kontrolne', 'Preventie- en controlemaatregelen', 'text', 'careers_training', NULL, NULL),
(245, 'careers_process_title', '6-Step Application Process', '6-etapowy proces aplikacji', '6-staps sollicitatieprocedure', 'text', 'careers_process', NULL, NULL),
(246, 'careers_step1_title', 'Initial Contact', 'Wstępny kontakt', 'Eerste contact', 'text', 'careers_process', NULL, NULL),
(247, 'careers_step1_desc', 'Submit your online application or call us', 'Wyślij aplikację online lub zadzwoń do nas', 'Dien uw online sollicitatie in of bel ons', 'text', 'careers_process', NULL, NULL),
(248, 'careers_step2_title', 'Team Follow-up', 'Kontakt zespołu', 'Team follow-up', 'text', 'careers_process', NULL, NULL),
(249, 'careers_step2_desc', 'We\'ll contact you within 24 hours', 'Skontaktujemy się z Tobą w ciągu 24 godzin', 'Wij nemen binnen 24 uur contact met u op', 'text', 'careers_process', NULL, NULL),
(250, 'careers_step3_title', 'Online Interview', 'Rozmowa online', 'Online interview', 'text', 'careers_process', NULL, NULL),
(251, 'careers_step3_desc', 'Convenient virtual interview process', 'Wygodny proces wirtualnej rozmowy', 'Handig virtueel interviewproces', 'text', 'careers_process', NULL, NULL),
(252, 'careers_step4_title', 'Background Checks', 'Sprawdzenie przeszłości', 'Achtergrondcontroles', 'text', 'careers_process', NULL, NULL),
(253, 'careers_step4_desc', 'DBS and reference verification', 'Weryfikacja DBS i referencji', 'DBS en referentieverificatie', 'text', 'careers_process', NULL, NULL),
(254, 'careers_step5_title', 'In-Person Induction', 'Wprowadzenie osobiste', 'Persoonlijke introductie', 'text', 'careers_process', NULL, NULL),
(255, 'careers_step5_desc', 'Two-day comprehensive training', 'Dwudniowe kompleksowe szkolenie', 'Tweedaagse uitgebreide training', 'text', 'careers_process', NULL, NULL),
(256, 'careers_step6_title', 'First Placement', 'Pierwsze zatrudnienie', 'Eerste plaatsing', 'text', 'careers_process', NULL, NULL),
(257, 'careers_step6_desc', 'Start your rewarding care journey', 'Rozpocznij swoją satysfakcjonującą podróż opiekuńczą', 'Begin uw lonende zorgreis', 'text', 'careers_process', NULL, NULL),
(258, 'careers_cta_title', 'Ready to Start Your Care Career?', 'Gotowy rozpocząć karierę w opiece?', 'Klaar om uw zorgcarrière te starten?', 'text', 'careers_cta', NULL, NULL),
(259, 'careers_cta_subtitle', 'Join our dedicated team and make a real difference in people\'s lives', 'Dołącz do naszego dedykowanego zespołu i zrób prawdziwą różnicę w życiu ludzi', 'Sluit u aan bij ons toegewijde team en maak echt verschil in het leven van mensen', 'text', 'careers_cta', NULL, NULL),
(260, 'careers_cta_button_apply', 'Apply Online Now', 'Aplikuj online teraz', 'Solliciteer nu online', 'text', 'careers_cta', NULL, NULL),
(261, 'contact_hero_title', 'Get in Touch', 'Skontaktuj się z nami', 'Neem contact op', 'text', 'contact_hero', NULL, NULL),
(262, 'contact_hero_subtitle', 'We\'re here to answer your questions and discuss how we can support you', 'Jesteśmy tutaj, aby odpowiedzieć na Twoje pytania i omówić, jak możemy Cię wesprzeć', 'Wij zijn er om uw vragen te beantwoorden en te bespreken hoe wij u kunnen ondersteunen', 'text', 'contact_hero', NULL, NULL),
(263, 'contact_info_title', 'Contact Information', 'Informacje kontaktowe', 'Contactinformatie', 'text', 'contact_info', NULL, NULL),
(264, 'contact_phone_label', 'Phone', 'Telefon', 'Telefoon', 'text', 'contact_info', NULL, NULL),
(265, 'contact_phone_available', 'Available 24/7', 'Dostępny 24/7', 'Beschikbaar 24/7', 'text', 'contact_info', NULL, NULL),
(266, 'contact_email_label', 'Email', 'E-mail', 'E-mail', 'text', 'contact_info', NULL, NULL),
(267, 'contact_address_label', 'Office Address', 'Adres biura', 'Kantooradres', 'text', 'contact_info', NULL, NULL),
(268, 'contact_address_line1', 'Sunrise & Sunset Home Care', 'Sunrise & Sunset Home Care', 'Sunrise & Sunset Home Care', 'text', 'contact_info', NULL, NULL),
(269, 'contact_address_line2', 'London, United Kingdom', 'Londyn, Wielka Brytania', 'Londen, Verenigd Koninkrijk', 'text', 'contact_info', NULL, NULL),
(270, 'contact_hours_title', 'Opening Hours', 'Godziny otwarcia', 'Openingstijden', 'text', 'contact_info', NULL, NULL),
(271, 'contact_hours_emergency', 'Emergency Support:', 'Wsparcie awaryjne:', 'Noodondersteuning:', 'text', 'contact_info', NULL, NULL),
(272, 'contact_hours_emergency_time', '24/7', '24/7', '24/7', 'text', 'contact_info', NULL, NULL),
(273, 'contact_hours_office', 'Office Hours:', 'Godziny biura:', 'Kantooruren:', 'text', 'contact_info', NULL, NULL),
(274, 'contact_hours_office_time', 'Mon-Fri 9am-6pm', 'Pn-Pt 9:00-18:00', 'Ma-Vr 9u-18u', 'text', 'contact_info', NULL, NULL),
(275, 'contact_form_title', 'Send Us a Message', 'Wyślij nam wiadomość', 'Stuur ons een bericht', 'text', 'contact_form', NULL, NULL),
(276, 'contact_form_inquiry_label', 'I\'m inquiring about *', 'Pytam o *', 'Ik informeer naar *', 'text', 'contact_form', NULL, NULL),
(277, 'contact_form_inquiry_select', 'Please select...', 'Proszę wybrać...', 'Selecteer alstublieft...', 'text', 'contact_form', NULL, NULL),
(278, 'contact_form_inquiry_myself', 'Care for myself', 'Opieka dla mnie', 'Zorg voor mezelf', 'text', 'contact_form', NULL, NULL),
(279, 'contact_form_inquiry_loved', 'Care for a loved one', 'Opieka dla bliskiej osoby', 'Zorg voor een dierbare', 'text', 'contact_form', NULL, NULL),
(280, 'contact_form_inquiry_professional', 'Professional referral', 'Skierowanie zawodowe', 'Professionele verwijzing', 'text', 'contact_form', NULL, NULL),
(281, 'contact_form_inquiry_job', 'Care job opportunities', 'Możliwości pracy w opiece', 'Zorgvacatures', 'text', 'contact_form', NULL, NULL),
(282, 'contact_form_inquiry_other', 'Other inquiry', 'Inne zapytanie', 'Andere vraag', 'text', 'contact_form', NULL, NULL),
(283, 'contact_form_name_label', 'Full Name *', 'Pełne imię i nazwisko *', 'Volledige naam *', 'text', 'contact_form', NULL, NULL),
(284, 'contact_form_name_placeholder', 'Your full name', 'Twoje pełne imię i nazwisko', 'Uw volledige naam', 'text', 'contact_form', NULL, NULL),
(285, 'contact_form_email_label', 'Email Address *', 'Adres e-mail *', 'E-mailadres *', 'text', 'contact_form', NULL, NULL),
(286, 'contact_form_email_placeholder', 'your@email.com', 'twoj@email.com', 'uw@email.com', 'text', 'contact_form', NULL, NULL),
(287, 'contact_form_phone_label', 'Phone Number *', 'Numer telefonu *', 'Telefoonnummer *', 'text', 'contact_form', NULL, NULL),
(288, 'contact_form_phone_placeholder', '+44 20 xxxx xxxx', '+48 xxx xxx xxx', '+31 xxx xxx xxx', 'text', 'contact_form', NULL, NULL),
(289, 'contact_form_time_label', 'Preferred Contact Time', 'Preferowany czas kontaktu', 'Voorkeurstijd voor contact', 'text', 'contact_form', NULL, NULL),
(290, 'contact_form_time_anytime', 'Any time', 'Każdy czas', 'Elke tijd', 'text', 'contact_form', NULL, NULL),
(291, 'contact_form_message_label', 'Your Message', 'Twoja wiadomość', 'Uw bericht', 'text', 'contact_form', NULL, NULL),
(292, 'contact_form_message_placeholder', 'Tell us more about your care needs or inquiry...', 'Powiedz nam więcej o swoich potrzebach opiekuńczych lub zapytaniu...', 'Vertel ons meer over uw zorgbehoeften of vraag...', 'text', 'contact_form', NULL, NULL),
(293, 'contact_form_submit', 'Send Message', 'Wyślij wiadomość', 'Bericht verzenden', 'text', 'contact_form', NULL, NULL),
(294, 'contact_form_privacy', 'By submitting this form, you consent to us processing your data in accordance with our Privacy Policy.', 'Przesyłając ten formularz, wyrażasz zgodę na przetwarzanie przez nas Twoich danych zgodnie z naszą Polityką prywatności.', 'Door dit formulier in te dienen, stemt u ermee in dat wij uw gegevens verwerken in overeenstemming met ons privacybeleid.', 'textarea', 'contact_form', NULL, NULL),
(295, 'contact_cta_title', 'Prefer to Speak Directly?', 'Wolisz rozmawiać bezpośrednio?', 'Liever direct spreken?', 'text', 'contact_cta', NULL, NULL),
(296, 'contact_cta_subtitle', 'Our friendly team is available 24 hours a day to answer your questions', 'Nasz przyjazny zespół jest dostępny 24 godziny na dobę, aby odpowiedzieć na Twoje pytania', 'Ons vriendelijke team is 24 uur per dag beschikbaar om uw vragen te beantwoorden', 'text', 'contact_cta', NULL, NULL),
(297, 'jobapp_title', 'Apply for Live-In Care Position', 'Aplikuj na stanowisko opiekuna domowego', 'Solliciteer voor thuiszorgpositie', 'text', 'jobapp', NULL, NULL),
(298, 'jobapp_subtitle', 'Fill out the form below to start your journey with us. All fields marked with * are required.', 'Wypełnij poniższy formularz, aby rozpocząć swoją podróż z nami. Wszystkie pola oznaczone * są wymagane.', 'Vul het onderstaande formulier in om uw reis met ons te beginnen. Alle velden gemarkeerd met * zijn verplicht.', 'text', 'jobapp', NULL, NULL),
(299, 'jobapp_personal_title', 'Personal Information', 'Informacje osobiste', 'Persoonlijke informatie', 'text', 'jobapp', NULL, NULL),
(300, 'jobapp_professional_title', 'Professional Information', 'Informacje zawodowe', 'Professionele informatie', 'text', 'jobapp', NULL, NULL),
(301, 'jobapp_experience_label', 'Previous Care Experience *', 'Poprzednie doświadczenie w opiece *', 'Eerdere zorgervaring *', 'text', 'jobapp', NULL, NULL),
(302, 'jobapp_experience_placeholder', 'Please describe your previous experience in care work, including roles, responsibilities, and duration...', 'Opisz swoje poprzednie doświadczenie w pracy opiekuńczej, w tym role, obowiązki i czas trwania...', 'Beschrijf uw eerdere ervaring in zorgwerk, inclusief rollen, verantwoordelijkheden en duur...', 'textarea', 'jobapp', NULL, NULL),
(303, 'jobapp_qualifications_label', 'Qualifications & Certifications *', 'Kwalifikacje i certyfikaty *', 'Kwalificaties & certificaten *', 'text', 'jobapp', NULL, NULL),
(304, 'jobapp_qualifications_placeholder', 'Please list your relevant qualifications, certifications, and training (e.g., NVQ, First Aid, etc.)...', 'Wymień swoje odpowiednie kwalifikacje, certyfikaty i szkolenia (np. NVQ, Pierwsza Pomoc itp.)...', 'Vermeld uw relevante kwalificaties, certificaten en trainingen (bijv. NVQ, EHBO, enz.)...', 'textarea', 'jobapp', NULL, NULL),
(305, 'jobapp_additional_title', 'Additional Information', 'Dodatkowe informacje', 'Aanvullende informatie', 'text', 'jobapp', NULL, NULL),
(306, 'jobapp_right_to_work', 'I have the right to work in the UK *', 'Mam prawo do pracy w Wielkiej Brytanii *', 'Ik heb het recht om in het VK te werken *', 'text', 'jobapp', NULL, NULL),
(307, 'jobapp_right_to_work_desc', 'You must have valid work authorization to apply for this position.', 'Musisz mieć ważne zezwolenie na pracę, aby aplikować na to stanowisko.', 'U moet geldige werkvergunning hebben om voor deze functie te solliciteren.', 'text', 'jobapp', NULL, NULL),
(308, 'jobapp_driving_license', 'I have a valid driving license', 'Mam ważne prawo jazdy', 'Ik heb een geldig rijbewijs', 'text', 'jobapp', NULL, NULL),
(309, 'jobapp_driving_license_desc', 'A driving license is preferred but not required.', 'Prawo jazdy jest preferowane, ale nie wymagane.', 'Een rijbewijs heeft de voorkeur maar is niet vereist.', 'text', 'jobapp', NULL, NULL),
(310, 'jobapp_cv_title', 'CV Upload', 'Przesłanie CV', 'CV uploaden', 'text', 'jobapp', NULL, NULL),
(311, 'jobapp_cv_label', 'Upload Your CV *', 'Prześlij swoje CV *', 'Upload uw CV *', 'text', 'jobapp', NULL, NULL),
(312, 'jobapp_cv_upload', 'Upload a file', 'Prześlij plik', 'Upload een bestand', 'text', 'jobapp', NULL, NULL),
(313, 'jobapp_cv_drag', 'or drag and drop', 'lub przeciągnij i upuść', 'of sleep en zet neer', 'text', 'jobapp', NULL, NULL),
(314, 'jobapp_cv_types', 'PDF, DOC, DOCX up to 10MB', 'PDF, DOC, DOCX do 10MB', 'PDF, DOC, DOCX tot 10MB', 'text', 'jobapp', NULL, NULL),
(315, 'jobapp_cv_success', 'File uploaded successfully', 'Plik przesłany pomyślnie', 'Bestand succesvol geüpload', 'text', 'jobapp', NULL, NULL),
(316, 'jobapp_required', '* Required fields', '* Pola wymagane', '* Verplichte velden', 'text', 'jobapp', NULL, NULL),
(317, 'jobapp_submit', 'Submit Application', 'Wyślij aplikację', 'Sollicitatie indienen', 'text', 'jobapp', NULL, NULL),
(318, 'jobapp_submitting', 'Submitting...', 'Wysyłanie...', 'Indienen...', 'text', 'jobapp', NULL, NULL),
(319, 'jobapp_help_title', 'Need Help?', 'Potrzebujesz pomocy?', 'Hulp nodig?', 'text', 'jobapp', NULL, NULL),
(320, 'jobapp_help_desc', 'If you have any questions about the application process or need assistance, please don\'t hesitate to contact us.', 'Jeśli masz jakiekolwiek pytania dotyczące procesu aplikacji lub potrzebujesz pomocy, nie wahaj się z nami skontaktować.', 'Als u vragen heeft over het sollicitatieproces of hulp nodig heeft, aarzel dan niet om contact met ons op te nemen.', 'textarea', 'jobapp', NULL, NULL),
(321, 'header_phone_text', 'Call our friendly team today on', 'Zadzwoń do naszego przyjaznego zespołu już dziś', 'Bel ons vriendelijke team vandaag op', 'text', 'header', NULL, NULL),
(322, 'news_hero_title', 'Latest News', 'Najnowsze wiadomości', 'Laatste nieuws', 'text', 'news', NULL, NULL),
(323, 'news_hero_subtitle', 'Read the latest care industry news, interesting articles, and important announcements', 'Przeczytaj najnowsze wiadomości z branży opiekuńczej, ciekawe artykuły i ważne ogłoszenia', 'Lees het laatste nieuws uit de zorgsector, interessante artikelen en belangrijke aankondigingen', 'text', 'news', NULL, NULL),
(324, 'news_read_more', 'Read More', 'Czytaj więcej', 'Lees meer', 'text', 'news', NULL, NULL),
(325, 'news_newsletter_title', 'Stay Updated', 'Bądź na bieżąco', 'Blijf op de hoogte', 'text', 'news', NULL, NULL),
(326, 'news_newsletter_subtitle', 'Get the latest news and updates delivered straight to your inbox', 'Otrzymuj najnowsze wiadomości i aktualizacje bezpośrednio do skrzynki odbiorczej', 'Ontvang het laatste nieuws en updates rechtstreeks in uw inbox', 'text', 'news', NULL, NULL),
(327, 'news_cta_title', 'Learn More About Our Services', 'Dowiedz się więcej o naszych usługach', 'Meer informatie over onze diensten', 'text', 'news', NULL, NULL),
(328, 'news_cta_subtitle', 'Contact us today to discuss your care needs', 'Skontaktuj się z nami już dziś, aby omówić swoje potrzeby opiekuńcze', 'Neem vandaag nog contact met ons op om uw zorgbehoeften te bespreken', 'text', 'news', NULL, NULL),
(329, 'news_contact_button', 'Contact Us', 'Skontaktuj się z nami', 'Neem contact op', 'text', 'news', NULL, NULL),
(330, 'news_cta_online', 'Contact Us Online', 'Skontaktuj się online', 'Neem online contact op', 'text', 'news', NULL, NULL),
(331, 'resources_hero_title', 'Care Resources & Information', 'Zasoby i informacje opiekuńcze', 'Zorgbronnen & informatie', 'text', 'resources', NULL, NULL),
(332, 'resources_hero_subtitle', 'Helpful resources and information to support you in making informed care decisions', 'Przydatne zasoby i informacje wspierające podejmowanie świadomych decyzji opiekuńczych', 'Nuttige bronnen en informatie om u te ondersteunen bij het nemen van weloverwogen zorgbeslissingen', 'text', 'resources', NULL, NULL),
(333, 'resources_card1_title', 'Care Guides', 'Przewodniki opieki', 'Zorggidsen', 'text', 'resources', NULL, NULL),
(334, 'resources_card1_desc', 'Comprehensive guides on various aspects of live-in care, from getting started to managing complex conditions.', 'Kompleksowe przewodniki dotyczące różnych aspektów opieki domowej, od rozpoczęcia po zarządzanie złożonymi stanami.', 'Uitgebreide gidsen over verschillende aspecten van thuiszorg, van aan de slag gaan tot het beheren van complexe aandoeningen.', 'textarea', 'resources', NULL, NULL),
(335, 'resources_card2_title', 'Useful Forms', 'Przydatne formularze', 'Nuttige formulieren', 'text', 'resources', NULL, NULL),
(336, 'resources_card2_desc', 'Download important forms and documents for care assessments, funding applications, and service agreements.', 'Pobierz ważne formularze i dokumenty do oceny opieki, wniosków o finansowanie i umów serwisowych.', 'Download belangrijke formulieren en documenten voor zorgbeoordelingen, financieringsaanvragen en serviceovereenkomsten.', 'textarea', 'resources', NULL, NULL),
(337, 'resources_card3_title', 'FAQs', 'FAQ', 'Veelgestelde vragen', 'text', 'resources', NULL, NULL),
(338, 'resources_card3_desc', 'Find answers to commonly asked questions about our services, care options, and the care process.', 'Znajdź odpowiedzi na często zadawane pytania dotyczące naszych usług, opcji opieki i procesu opieki.', 'Vind antwoorden op veelgestelde vragen over onze diensten, zorgopties en het zorgproces.', 'textarea', 'resources', NULL, NULL),
(339, 'resources_card4_title', 'Condition-Specific Information', 'Informacje specyficzne dla schorzeń', 'Aandoeningsspecifieke informatie', 'text', 'resources', NULL, NULL),
(340, 'resources_card4_desc', 'Detailed information about caring for specific conditions including dementia, Parkinson\'s, and more.', 'Szczegółowe informacje na temat opieki nad konkretnymi schorzeniami, w tym demencją, chorobą Parkinsona i innymi.', 'Gedetailleerde informatie over de zorg voor specifieke aandoeningen, waaronder dementie, Parkinson en meer.', 'textarea', 'resources', NULL, NULL),
(341, 'resources_card5_title', 'Family Support', 'Wsparcie rodziny', 'Familieondersteuning', 'text', 'resources', NULL, NULL),
(342, 'resources_card5_desc', 'Resources and guidance for family members supporting a loved one receiving care at home.', 'Zasoby i wskazówki dla członków rodziny wspierających bliską osobę otrzymującą opiekę w domu.', 'Bronnen en begeleiding voor familieleden die een dierbare ondersteunen die thuis zorg ontvangt.', 'textarea', 'resources', NULL, NULL),
(343, 'resources_card6_title', 'External Resources', 'Zasoby zewnętrzne', 'Externe bronnen', 'text', 'resources', NULL, NULL),
(344, 'resources_card6_desc', 'Links to trusted external organizations, charities, and support services for additional help.', 'Linki do zaufanych organizacji zewnętrznych, organizacji charytatywnych i usług wsparcia dla dodatkowej pomocy.', 'Links naar vertrouwde externe organisaties, goede doelen en ondersteunende diensten voor extra hulp.', 'textarea', 'resources', NULL, NULL),
(345, 'resources_key_title', 'Key Resources', 'Kluczowe zasoby', 'Belangrijke bronnen', 'text', 'resources', NULL, NULL),
(346, 'resources_key1_title', 'Getting Started with Live-in Care', 'Rozpoczęcie opieki domowej', 'Aan de slag met thuiszorg', 'text', 'resources', NULL, NULL),
(347, 'resources_key1_desc', 'A comprehensive guide to help you understand what live-in care involves, how to prepare your home, and what to expect from your care professional.', 'Kompleksowy przewodnik pomagający zrozumieć, co obejmuje opieka domowa, jak przygotować swój dom i czego oczekiwać od opiekuna.', 'Een uitgebreide gids om u te helpen begrijpen wat thuiszorg inhoudt, hoe u uw huis voorbereidt en wat u van uw zorgprofessional kunt verwachten.', 'textarea', 'resources', NULL, NULL),
(348, 'resources_key2_title', 'Understanding Care Costs', 'Zrozumienie kosztów opieki', 'Zorgkosten begrijpen', 'text', 'resources', NULL, NULL),
(349, 'resources_key2_desc', 'Transparent information about care costs, what\'s included in our pricing, and how to plan your care budget effectively.', 'Przejrzyste informacje o kosztach opieki, co jest zawarte w naszych cenach i jak efektywnie zaplanować budżet opieki.', 'Transparante informatie over zorgkosten, wat er in onze prijzen is inbegrepen en hoe u uw zorgbudget effectief plant.', 'textarea', 'resources', NULL, NULL),
(350, 'resources_key3_title', 'Care Quality & Standards', 'Jakość i standardy opieki', 'Zorgkwaliteit & normen', 'text', 'resources', NULL, NULL),
(351, 'resources_key3_desc', 'Information about our quality standards, CQC registration, and our commitment to excellence in care delivery.', 'Informacje o naszych standardach jakości, rejestracji CQC i naszym zaangażowaniu w doskonałość w świadczeniu opieki.', 'Informatie over onze kwaliteitsnormen, CQC-registratie en onze toewijding aan excellentie in zorgverlening.', 'textarea', 'resources', NULL, NULL),
(352, 'resources_orgs_title', 'Helpful Organizations', 'Pomocne organizacje', 'Nuttige organisaties', 'text', 'resources', NULL, NULL),
(353, 'resources_orgs_intro', 'These trusted organizations provide additional support and information for people needing care and their families:', 'Te zaufane organizacje zapewniają dodatkowe wsparcie i informacje dla osób potrzebujących opieki i ich rodzin:', 'Deze vertrouwde organisaties bieden aanvullende ondersteuning en informatie voor mensen die zorg nodig hebben en hun families:', 'textarea', 'resources', NULL, NULL),
(354, 'resources_cta_title', 'Need More Information?', 'Potrzebujesz więcej informacji?', 'Meer informatie nodig?', 'text', 'resources', NULL, NULL),
(355, 'resources_cta_subtitle', 'Our team is here to answer your questions and provide personalized guidance', 'Nasz zespół jest tutaj, aby odpowiedzieć na Twoje pytania i zapewnić spersonalizowane wskazówki', 'Ons team staat klaar om uw vragen te beantwoorden en persoonlijke begeleiding te bieden', 'text', 'resources', NULL, NULL),
(356, 'common_learn_more', 'Learn More', 'Dowiedz się więcej', 'Meer informatie', 'text', 'common', NULL, NULL),
(357, 'common_view_funding', 'View Funding Options', 'Zobacz opcje finansowania', 'Bekijk financieringsopties', 'text', 'common', NULL, NULL),
(358, 'common_read_more', 'Read More', 'Czytaj więcej', 'Lees meer', 'text', 'common', NULL, NULL),
(359, 'common_call', 'Call', 'Zadzwoń', 'Bel', 'text', 'common', NULL, NULL),
(360, 'menu_home', 'Home', 'Strona główna', 'Home', 'text', 'menu', NULL, NULL),
(361, 'menu_live_in_care', 'Live-in Care', 'Opieka domowa', 'Thuiszorg', 'text', 'menu', NULL, NULL),
(362, 'menu_care_funding', 'Care Funding', 'Finansowanie opieki', 'Zorgfinanciering', 'text', 'menu', NULL, NULL),
(363, 'menu_resources', 'Resources', 'Zasoby', 'Bronnen', 'text', 'menu', NULL, NULL),
(364, 'menu_careers', 'Careers', 'Kariera', 'Carrières', 'text', 'menu', NULL, NULL),
(365, 'menu_news', 'News', 'Aktualności', 'Nieuws', 'text', 'menu', NULL, NULL),
(366, 'menu_contact', 'Contact', 'Kontakt', 'Contact', 'text', 'menu', NULL, NULL),
(367, 'menu_button_text', 'Menu', 'Menu', 'Menu', 'text', 'menu', NULL, NULL),
(368, 'header_login_text', 'Login', 'Zaloguj się', 'Inloggen', 'text', 'header', NULL, NULL),
(369, 'site_logo', '/images/logo.png', '/images/logo.png', '/images/logo.png', 'image', 'branding', NULL, NULL),
(370, 'site_favicon', '/images/favicon.ico', '/images/favicon.ico', '/images/favicon.ico', 'image', 'branding', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_modules`
--

CREATE TABLE `training_modules` (
  `id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_pl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_nl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_pl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_nl` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_modules`
--

INSERT INTO `training_modules` (`id`, `title_en`, `description_en`, `title_pl`, `title_nl`, `description_pl`, `description_nl`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Live-In Care & Professional Standards', 'Comprehensive foundation in live-in care work covering the role and responsibilities of a professional carer, understanding client-centered care approaches, establishing and maintaining professional boundaries, effective communication skills with clients and families, managing expectations, and maintaining a healthy work-life balance while living in your client\'s home. Learn about the Care Certificate standards, CQC requirements, and your rights and responsibilities as an employed carer.', 'Wprowadzenie do Opieki Domowej i Standardów Zawodowych', NULL, 'Kompleksowe podstawy pracy w opiece domowej obejmujące rolę i obowiązki profesjonalnego opiekuna, zrozumienie podejść do opieki skoncentrowanej na kliencie, ustanawianie i utrzymywanie granic zawodowych, skuteczne umiejętności komunikacyjne z klientami i rodzinami, zarządzanie oczekiwaniami i utrzymywanie zdrowej równowagi między pracą a życiem podczas mieszkania w domu klienta. Dowiedz się o standardach Certyfikatu Opieki, wymogach CQC oraz Twoich prawach i obowiązkach jako zatrudnionego opiekuna.', NULL, 1, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(2, 'Personal Care, Dignity & Person-Centered Support', 'Master safe, respectful, and dignified techniques for providing personal care including washing, bathing, showering, oral hygiene, dressing and undressing, toileting and continence care, and mobility assistance. Learn to promote independence by encouraging clients to do what they can for themselves while providing support where needed. Understand privacy, dignity, choice, and respect in all care activities. Covers use of mobility aids, proper body mechanics, and adapting care to individual preferences and cultural needs.', 'Opieka Osobista, Godność i Wsparcie Zorientowane na Osobę', NULL, 'Opanuj bezpieczne, pełne szacunku i godności techniki świadczenia opieki osobistej, w tym mycie, kąpiel, prysznic, higienę jamy ustnej, ubieranie i rozbieranie, toaletę i opiekę nad nietrzymaniem oraz pomoc w mobilności. Naucz się promować niezależność, zachęcając klientów do robienia tego, co mogą sami, jednocześnie zapewniając wsparcie tam, gdzie jest potrzebne. Zrozum prywatność, godność, wybór i szacunek we wszystkich działaniach opiekuńczych. Obejmuje używanie pomocy do poruszania się, właściwą mechanikę ciała i dostosowywanie opieki do indywidualnych preferencji i potrzeb kulturowych.', NULL, 2, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(3, 'Health & Safety, Risk Assessment & Infection Control', 'Essential health and safety training covering risk assessment in home environments, manual handling techniques and safe moving practices, preventing and managing falls, fire safety and emergency procedures, safe use of equipment and household appliances, infection prevention and control including handwashing, PPE use, and waste disposal, COSHH regulations for household chemicals, and creating safer living environments. Learn to identify hazards, assess risks, and implement practical solutions while respecting the client\'s home.', 'Zdrowie i Bezpieczeństwo, Ocena Ryzyka i Kontrola Infekcji', NULL, 'Podstawowe szkolenie z zakresu zdrowia i bezpieczeństwa obejmujące ocenę ryzyka w środowiskach domowych, techniki ręcznego podnoszenia i bezpieczne praktyki przenoszenia, zapobieganie upadkom i zarządzanie nimi, bezpieczeństwo pożarowe i procedury awaryjne, bezpieczne używanie sprzętu i urządzeń domowych, zapobieganie infekcjom i kontrolę, w tym mycie rąk, stosowanie środków ochrony osobistej i utylizację odpadów, przepisy COSHH dotyczące chemikaliów domowych oraz tworzenie bezpieczniejszych środowisk życia. Naucz się identyfikować zagrożenia, oceniać ryzyko i wdrażać praktyczne rozwiązania, szanując dom klienta.', NULL, 3, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(4, 'Medication Administration & Healthcare Support', 'Comprehensive medication training covering types of medications and their purposes, safe administration techniques, the 6 Rs of medication safety (Right person, Right medicine, Right dose, Right time, Right route, Right to refuse), proper storage and handling, accurate recording and documentation, recognizing and reporting side effects and adverse reactions, supporting clients with self-medication, and when to seek medical advice. Includes training on common medications for chronic conditions, inhalers, insulin, and topical treatments. Certification meets CQC requirements for medication competency.', 'Podawanie Leków i Wsparcie Opieki Zdrowotnej', NULL, 'Kompleksowe szkolenie z zakresu leków obejmujące rodzaje leków i ich cele, bezpieczne techniki podawania, 6 R bezpieczeństwa lekowego (Właściwa osoba, Właściwy lek, Właściwa dawka, Właściwy czas, Właściwa droga, Prawo do odmowy), właściwe przechowywanie i obsługę, dokładne rejestrowanie i dokumentację, rozpoznawanie i zgłaszanie skutków ubocznych i reakcji niepożądanych, wspieranie klientów w samodzielnym przyjmowaniu leków oraz kiedy szukać porady medycznej. Obejmuje szkolenie dotyczące popularnych leków na choroby przewlekłe, inhalatorów, insuliny i leczenia miejscowego. Certyfikacja spełnia wymagania CQC dotyczące kompetencji w zakresie leków.', NULL, 4, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(5, 'Dementia Care & Memory Support', 'Specialized dementia care training covering understanding different types of dementia (Alzheimer\'s, vascular, Lewy body, frontotemporal), how dementia affects thinking, memory, and behavior, person-centered dementia care approaches, effective communication strategies (validation, reminiscence, life story work), managing challenging behaviors with compassion and understanding, creating dementia-friendly environments, supporting daily activities and maintaining abilities, working with families and understanding carer stress, and promoting quality of life and wellbeing for people living with dementia.', 'Opieka nad Osobami z Demencją i Wsparcie Pamięci', NULL, 'Specjalistyczne szkolenie w zakresie opieki nad osobami z demencją obejmujące zrozumienie różnych rodzajów demencji (Alzheimer, naczyniowa, ciała Lewy\'ego, czołowo-skroniowa), jak demencja wpływa na myślenie, pamięć i zachowanie, podejścia do opieki nad osobami z demencją skoncentrowane na osobie, skuteczne strategie komunikacji (walidacja, wspominanie, praca nad historią życia), zarządzanie trudnymi zachowaniami ze współczuciem i zrozumieniem, tworzenie środowisk przyjaznych dla osób z demencją, wspieranie codziennych działań i utrzymywanie zdolności, praca z rodzinami i zrozumienie stresu opiekuna oraz promowanie jakości życia i dobrostanu dla osób żyjących z demencją.', NULL, 5, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(6, 'First Aid, Emergency Response & Basic Life Support', 'Certified first aid training (renewable annually) covering CPR and basic life support, managing choking in adults, dealing with falls and fractures, treating burns and scalds, managing bleeding and wounds, recognizing and responding to heart attacks and strokes, diabetic emergencies (hypo/hyperglycemia), seizures and epilepsy, allergic reactions, and shock. Learn the DRSABC approach, when and how to call emergency services, what information to provide, and how to keep calm in emergencies. Includes practical scenarios and hands-on practice with mannequins and equipment.', 'Pierwsza Pomoc, Reakcja Awaryjna i Podstawowe Wsparcie Życia', NULL, 'Certyfikowane szkolenie z pierwszej pomocy (odnawiane corocznie) obejmujące RKO i podstawowe wsparcie życia, zarządzanie zadławieniem u dorosłych, radzenie sobie z upadkami i złamaniami, leczenie oparzeń, zarządzanie krwawieniem i ranami, rozpoznawanie i reagowanie na ataki serca i udary, nagłe przypadki cukrzycowe (hipo/hiperglikemia), napady padaczkowe i epilepsję, reakcje alergiczne i wstrząs. Naucz się podejścia DRSABC, kiedy i jak dzwonić po służby ratunkowe, jakie informacje przekazać i jak zachować spokój w sytuacjach awaryjnych. Obejmuje praktyczne scenariusze i praktyczne ćwiczenia z manekinami i sprzętem.', NULL, 6, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(7, 'Nutrition, Hydration & Meal Preparation', 'Comprehensive nutrition training covering nutritional needs of older adults, understanding common dietary requirements (diabetic, low sodium, soft diet, pureed, etc.), food safety and hygiene, meal planning on a budget, preparing nutritious and appetizing meals, supporting clients with eating and drinking, recognizing signs of malnutrition and dehydration, managing poor appetite and swallowing difficulties, cultural and religious dietary considerations, and encouraging adequate fluid intake. Includes practical cooking skills, adapting recipes for special diets, and making mealtimes enjoyable social occasions.', 'Żywienie, Nawodnienie i Przygotowywanie Posiłków', NULL, 'Kompleksowe szkolenie z zakresu żywienia obejmujące potrzeby żywieniowe osób starszych, zrozumienie powszechnych wymagań dietetycznych (cukrzycowych, niskosodowych, miękkiej diety, przecierów itp.), bezpieczeństwo i higienę żywności, planowanie posiłków na budżet, przygotowywanie pożywnych i apetycznych posiłków, wspieranie klientów w jedzeniu i piciu, rozpoznawanie oznak niedożywienia i odwodnienia, zarządzanie słabym apetytem i trudnościami w połykaniu, kulturowe i religijne względy dietetyczne oraz zachęcanie do odpowiedniego spożycia płynów. Obejmuje praktyczne umiejętności gotowania, dostosowywanie przepisów do specjalnych diet i czynienie posiłków przyjemnymi okazjami społecznymi.', NULL, 7, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(8, 'Safeguarding Adults & Duty of Care', 'Critical training on protecting vulnerable adults from harm, abuse, and neglect. Covers the six types of abuse (physical, emotional/psychological, sexual, financial, neglect, discriminatory), recognizing signs and indicators of abuse, understanding why abuse happens and who might be at risk, your legal duty to report concerns and safeguarding procedures, whistleblowing and raising concerns about poor practice, maintaining professional boundaries, the Mental Capacity Act and consent, and supporting clients who lack capacity. Learn about local safeguarding authorities, reporting procedures, and how to document concerns properly.', 'Ochrona Dorosłych i Obowiązek Opieki', NULL, 'Kluczowe szkolenie w zakresie ochrony wrażliwych dorosłych przed krzywdą, nadużyciami i zaniedbaniem. Obejmuje sześć rodzajów nadużyć (fizyczne, emocjonalne/psychologiczne, seksualne, finansowe, zaniedbanie, dyskryminujące), rozpoznawanie oznak i wskaźników nadużyć, zrozumienie, dlaczego dochodzi do nadużyć i kto może być zagrożony, Twój prawny obowiązek zgłaszania obaw i procedury ochrony, zgłaszanie nieprawidłowości i podnoszenie obaw o złe praktyki, utrzymywanie granic zawodowych, ustawę o zdolności umysłowej i zgodę oraz wspieranie klientów, którzy nie mają zdolności. Dowiedz się o lokalnych władzach ochrony, procedurach zgłaszania i jak prawidłowo dokumentować obawy.', NULL, 8, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(9, 'End of Life & Palliative Care Support', 'Sensitive and compassionate training in supporting clients and families through end of life. Covers understanding palliative care principles and goals, recognizing signs that someone may be approaching end of life, supporting comfort and dignity in the final stages, pain and symptom management support, emotional and spiritual support for clients, supporting families and understanding grief, practical aspects of end of life care at home, advance care planning and respecting wishes, your own emotions and self-care when caring for someone who is dying, and after-death care procedures. This module helps you provide compassionate, dignified care during this profound time.', 'Opieka w Końcu Życia i Wsparcie Opieki Paliatywnej', NULL, 'Wrażliwe i współczujące szkolenie we wspieraniu klientów i rodzin przez koniec życia. Obejmuje zrozumienie zasad i celów opieki paliatywnej, rozpoznawanie oznak, że ktoś może zbliżać się do końca życia, wspieranie komfortu i godności w końcowych etapach, wsparcie w zarządzaniu bólem i objawami, wsparcie emocjonalne i duchowe dla klientów, wspieranie rodzin i zrozumienie żałoby, praktyczne aspekty opieki w końcu życia w domu, planowanie opieki z wyprzedzeniem i szanowanie życzeń, Twoje własne emocje i samoopieka podczas opieki nad kimś, kto umiera, oraz procedury opieki po śmierci. Ten moduł pomaga zapewnić współczującą, godną opiekę w tym głębokim czasie.', NULL, 9, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(10, 'Mental Health, Wellbeing & Emotional Support', 'Understanding mental health in older adults including common conditions such as depression, anxiety, and loneliness/social isolation. Learn to recognize signs and symptoms of mental health problems, supportive communication and active listening skills, promoting mental wellbeing through meaningful activities and social connection, when and how to seek professional mental health support, supporting clients taking mental health medications, understanding the link between physical and mental health, and creating a positive, therapeutic relationship. Includes awareness of the impact of life changes, loss, and transition on mental health.', 'Zdrowie Psychiczne, Dobrostan i Wsparcie Emocjonalne', NULL, 'Zrozumienie zdrowia psychicznego u osób starszych, w tym powszechne stany, takie jak depresja, lęk i samotność/izolacja społeczna. Naucz się rozpoznawać oznaki i objawy problemów ze zdrowiem psychicznym, wspierające umiejętności komunikacji i aktywnego słuchania, promowanie dobrostanu psychicznego poprzez znaczące działania i połączenie społeczne, kiedy i jak szukać profesjonalnego wsparcia zdrowia psychicznego, wspieranie klientów przyjmujących leki na zdrowie psychiczne, zrozumienie związku między zdrowiem fizycznym a psychicznym oraz tworzenie pozytywnej, terapeutycznej relacji. Obejmuje świadomość wpływu zmian życiowych, straty i przejścia na zdrowie psychiczne.', NULL, 10, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(11, 'Communication Skills & Building Relationships', 'Advanced communication training covering verbal and non-verbal communication, active listening and empathy, communicating with people with hearing or visual impairments, supporting people with communication difficulties (aphasia, dysarthria), cultural sensitivity and diversity, handling difficult conversations and conflicts, working effectively with families and healthcare professionals, telephone communication and keeping others informed, and documentation and record-keeping. Learn to build trusting, professional relationships that enhance care quality and client satisfaction.', 'Umiejętności Komunikacyjne i Budowanie Relacji', NULL, 'Zaawansowane szkolenie komunikacyjne obejmujące komunikację werbalną i niewerbalną, aktywne słuchanie i empatię, komunikację z osobami z wadami słuchu lub wzroku, wspieranie osób z trudnościami w komunikacji (afazja, dyzartria), wrażliwość kulturową i różnorodność, radzenie sobie z trudnymi rozmowami i konfliktami, skuteczną pracę z rodzinami i profesjonalistami opieki zdrowotnej, komunikację telefoniczną i informowanie innych oraz dokumentację i prowadzenie zapisów. Naucz się budować zaufane, profesjonalne relacje, które poprawiają jakość opieki i satysfakcję klienta.', NULL, 11, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(12, 'Condition-Specific Care: Stroke, Parkinson\'s & Diabetes', 'Specialized training for caring for clients with specific conditions. Stroke care includes understanding stroke effects, supporting recovery and rehabilitation, managing physical disabilities, and communication after stroke. Parkinson\'s care covers understanding symptoms and progression, medication management, supporting mobility and preventing falls, and managing tremors and rigidity. Diabetes care includes blood glucose monitoring, supporting medication and insulin administration, recognizing and responding to hypo/hyperglycemia, diabetic diet support, and foot care. This specialist knowledge helps you provide confident, effective care.', 'Opieka Specyficzna dla Stanów: Udar, Parkinson i Cukrzyca', NULL, 'Specjalistyczne szkolenie dla opieki nad klientami z określonymi stanami. Opieka po udarze obejmuje zrozumienie skutków udaru, wspieranie powrotu do zdrowia i rehabilitacji, zarządzanie niepełnosprawnościami fizycznymi i komunikację po udarze. Opieka nad Parkinsonem obejmuje zrozumienie objawów i postępu, zarządzanie lekami, wspieranie mobilności i zapobieganie upadkom oraz zarządzanie drżeniem i sztywnością. Opieka nad cukrzycą obejmuje monitorowanie glukozy we krwi, wspieranie podawania leków i insuliny, rozpoznawanie i reagowanie na hipo/hiperglikemię, wsparcie diety cukrzycowej i opiekę nad stopami. Ta specjalistyczna wiedza pomaga zapewnić pewną, skuteczną opiekę.', NULL, 12, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(13, 'Activities, Engagement & Quality of Life', 'Training focused on enhancing client wellbeing through meaningful activities and social engagement. Covers understanding the importance of occupation and purpose, assessing interests and abilities, planning and facilitating activities (hobbies, crafts, games, exercise, reminiscence, music, reading), supporting social connections and community involvement, adapting activities for physical or cognitive limitations, encouraging independence and choice, and using activity to support physical, mental, and emotional health. Learn to make every day meaningful and enjoyable for your clients.', 'Działania, Zaangażowanie i Jakość Życia', NULL, 'Szkolenie skoncentrowane na poprawie dobrostanu klienta poprzez znaczące działania i zaangażowanie społeczne. Obejmuje zrozumienie znaczenia zajęcia i celu, ocenę zainteresowań i zdolności, planowanie i ułatwianie działań (hobby, rękodzieło, gry, ćwiczenia, wspominanie, muzyka, czytanie), wspieranie połączeń społecznych i zaangażowania w społeczność, dostosowywanie działań do ograniczeń fizycznych lub poznawczych, zachęcanie do niezależności i wyboru oraz wykorzystywanie działań do wspierania zdrowia fizycznego, psychicznego i emocjonalnego. Naucz się czynić każdy dzień znaczącym i przyjemnym dla swoich klientów.', NULL, 13, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(14, 'Professional Development & Career Progression', 'Supporting your ongoing growth as a care professional. Covers reflective practice and learning from experience, supervision and professional support, continuing professional development (CPD), pathways to qualifications (NVQ Level 2 and 3), specialist training opportunities (dementia champion, end of life care, diabetes care), progression to senior carer and coordinator roles, mentoring and supporting new carers, leadership skills development, and understanding quality standards and best practice. This module helps you map your career journey and achieve your professional goals.', 'Rozwój Zawodowy i Postęp w Karierze', NULL, 'Wspieranie Twojego ciągłego rozwoju jako profesjonalisty opieki. Obejmuje praktykę refleksyjną i uczenie się z doświadczenia, nadzór i wsparcie zawodowe, ciągły rozwój zawodowy (CPD), ścieżki do kwalifikacji (NVQ Level 2 i 3), możliwości szkolenia specjalistycznego (mistrz demencji, opieka w końcu życia, opieka nad cukrzycą), postęp do ról starszego opiekuna i koordynatora, mentorowanie i wspieranie nowych opiekunów, rozwój umiejętności przywódczych oraz zrozumienie standardów jakości i najlepszych praktyk. Ten moduł pomaga zmapować Twoją podróż kariery i osiągnąć Twoje cele zawodowe.', NULL, 14, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18'),
(15, 'Self-Care, Resilience & Preventing Burnout', 'Essential training for maintaining your own wellbeing while caring for others. Covers recognizing signs of stress and burnout, strategies for managing work-related stress, maintaining work-life balance in live-in care, the importance of using your time off effectively, physical self-care (sleep, nutrition, exercise), emotional self-care and processing difficult experiences, accessing support when you need it, building resilience and coping strategies, and preventing compassion fatigue. Learn that taking care of yourself is essential to providing excellent care for others.', 'Samoopiek a, Odporność i Zapobieganie Wypaleniu', NULL, 'Podstawowe szkolenie dla utrzymania własnego dobrostanu podczas opieki nad innymi. Obejmuje rozpoznawanie oznak stresu i wypalenia, strategie zarządzania stresem związanym z pracą, utrzymywanie równowagi między pracą a życiem w opiece domowej, znaczenie efektywnego wykorzystywania czasu wolnego, samoopieka fizyczna (sen, żywienie, ćwiczenia), samoopiek a emocjonalna i przetwarzanie trudnych doświadczeń, dostęp do wsparcia, gdy go potrzebujesz, budowanie odporności i strategii radzenia sobie oraz zapobieganie zmęczeniu współczuciem. Dowiedz się, że dbanie o siebie jest niezbędne do zapewnienia doskonałej opieki nad innymi.', NULL, 15, 1, '2025-10-06 13:07:18', '2025-10-06 13:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', 'admin', '2025-10-06 13:07:18', '$2y$12$UDBfNJcPIsc7soz2y.wtpen4V6xHynJjusW4WbtNMNhFAvNCY4JMC', NULL, '2025-10-06 13:07:18', '2025-10-07 15:26:08');

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
-- Indexes for table `care_jobs`
--
ALTER TABLE `care_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `job_positions`
--
ALTER TABLE `job_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_articles`
--
ALTER TABLE `news_articles`
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
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_settings_page_unique` (`page`);

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
-- AUTO_INCREMENT for table `care_jobs`
--
ALTER TABLE `care_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `job_positions`
--
ALTER TABLE `job_positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

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
