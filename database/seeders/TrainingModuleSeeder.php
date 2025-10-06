<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TrainingModuleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $modules = [
            [
                'title_en' => 'Introduction to Live-In Care & Professional Standards',
                'description_en' => 'Comprehensive foundation in live-in care work covering the role and responsibilities of a professional carer, understanding client-centered care approaches, establishing and maintaining professional boundaries, effective communication skills with clients and families, managing expectations, and maintaining a healthy work-life balance while living in your client\'s home. Learn about the Care Certificate standards, CQC requirements, and your rights and responsibilities as an employed carer.',
                'title_pl' => 'Wprowadzenie do Opieki Domowej i Standardów Zawodowych',
                'description_pl' => 'Kompleksowe podstawy pracy w opiece domowej obejmujące rolę i obowiązki profesjonalnego opiekuna, zrozumienie podejść do opieki skoncentrowanej na kliencie, ustanawianie i utrzymywanie granic zawodowych, skuteczne umiejętności komunikacyjne z klientami i rodzinami, zarządzanie oczekiwaniami i utrzymywanie zdrowej równowagi między pracą a życiem podczas mieszkania w domu klienta. Dowiedz się o standardach Certyfikatu Opieki, wymogach CQC oraz Twoich prawach i obowiązkach jako zatrudnionego opiekuna.',
                'order' => 1,
                'active' => true,
            ],
            [
                'title_en' => 'Personal Care, Dignity & Person-Centered Support',
                'description_en' => 'Master safe, respectful, and dignified techniques for providing personal care including washing, bathing, showering, oral hygiene, dressing and undressing, toileting and continence care, and mobility assistance. Learn to promote independence by encouraging clients to do what they can for themselves while providing support where needed. Understand privacy, dignity, choice, and respect in all care activities. Covers use of mobility aids, proper body mechanics, and adapting care to individual preferences and cultural needs.',
                'title_pl' => 'Opieka Osobista, Godność i Wsparcie Zorientowane na Osobę',
                'description_pl' => 'Opanuj bezpieczne, pełne szacunku i godności techniki świadczenia opieki osobistej, w tym mycie, kąpiel, prysznic, higienę jamy ustnej, ubieranie i rozbieranie, toaletę i opiekę nad nietrzymaniem oraz pomoc w mobilności. Naucz się promować niezależność, zachęcając klientów do robienia tego, co mogą sami, jednocześnie zapewniając wsparcie tam, gdzie jest potrzebne. Zrozum prywatność, godność, wybór i szacunek we wszystkich działaniach opiekuńczych. Obejmuje używanie pomocy do poruszania się, właściwą mechanikę ciała i dostosowywanie opieki do indywidualnych preferencji i potrzeb kulturowych.',
                'order' => 2,
                'active' => true,
            ],
            [
                'title_en' => 'Health & Safety, Risk Assessment & Infection Control',
                'description_en' => 'Essential health and safety training covering risk assessment in home environments, manual handling techniques and safe moving practices, preventing and managing falls, fire safety and emergency procedures, safe use of equipment and household appliances, infection prevention and control including handwashing, PPE use, and waste disposal, COSHH regulations for household chemicals, and creating safer living environments. Learn to identify hazards, assess risks, and implement practical solutions while respecting the client\'s home.',
                'title_pl' => 'Zdrowie i Bezpieczeństwo, Ocena Ryzyka i Kontrola Infekcji',
                'description_pl' => 'Podstawowe szkolenie z zakresu zdrowia i bezpieczeństwa obejmujące ocenę ryzyka w środowiskach domowych, techniki ręcznego podnoszenia i bezpieczne praktyki przenoszenia, zapobieganie upadkom i zarządzanie nimi, bezpieczeństwo pożarowe i procedury awaryjne, bezpieczne używanie sprzętu i urządzeń domowych, zapobieganie infekcjom i kontrolę, w tym mycie rąk, stosowanie środków ochrony osobistej i utylizację odpadów, przepisy COSHH dotyczące chemikaliów domowych oraz tworzenie bezpieczniejszych środowisk życia. Naucz się identyfikować zagrożenia, oceniać ryzyko i wdrażać praktyczne rozwiązania, szanując dom klienta.',
                'order' => 3,
                'active' => true,
            ],
            [
                'title_en' => 'Medication Administration & Healthcare Support',
                'description_en' => 'Comprehensive medication training covering types of medications and their purposes, safe administration techniques, the 6 Rs of medication safety (Right person, Right medicine, Right dose, Right time, Right route, Right to refuse), proper storage and handling, accurate recording and documentation, recognizing and reporting side effects and adverse reactions, supporting clients with self-medication, and when to seek medical advice. Includes training on common medications for chronic conditions, inhalers, insulin, and topical treatments. Certification meets CQC requirements for medication competency.',
                'title_pl' => 'Podawanie Leków i Wsparcie Opieki Zdrowotnej',
                'description_pl' => 'Kompleksowe szkolenie z zakresu leków obejmujące rodzaje leków i ich cele, bezpieczne techniki podawania, 6 R bezpieczeństwa lekowego (Właściwa osoba, Właściwy lek, Właściwa dawka, Właściwy czas, Właściwa droga, Prawo do odmowy), właściwe przechowywanie i obsługę, dokładne rejestrowanie i dokumentację, rozpoznawanie i zgłaszanie skutków ubocznych i reakcji niepożądanych, wspieranie klientów w samodzielnym przyjmowaniu leków oraz kiedy szukać porady medycznej. Obejmuje szkolenie dotyczące popularnych leków na choroby przewlekłe, inhalatorów, insuliny i leczenia miejscowego. Certyfikacja spełnia wymagania CQC dotyczące kompetencji w zakresie leków.',
                'order' => 4,
                'active' => true,
            ],
            [
                'title_en' => 'Dementia Care & Memory Support',
                'description_en' => 'Specialized dementia care training covering understanding different types of dementia (Alzheimer\'s, vascular, Lewy body, frontotemporal), how dementia affects thinking, memory, and behavior, person-centered dementia care approaches, effective communication strategies (validation, reminiscence, life story work), managing challenging behaviors with compassion and understanding, creating dementia-friendly environments, supporting daily activities and maintaining abilities, working with families and understanding carer stress, and promoting quality of life and wellbeing for people living with dementia.',
                'title_pl' => 'Opieka nad Osobami z Demencją i Wsparcie Pamięci',
                'description_pl' => 'Specjalistyczne szkolenie w zakresie opieki nad osobami z demencją obejmujące zrozumienie różnych rodzajów demencji (Alzheimer, naczyniowa, ciała Lewy\'ego, czołowo-skroniowa), jak demencja wpływa na myślenie, pamięć i zachowanie, podejścia do opieki nad osobami z demencją skoncentrowane na osobie, skuteczne strategie komunikacji (walidacja, wspominanie, praca nad historią życia), zarządzanie trudnymi zachowaniami ze współczuciem i zrozumieniem, tworzenie środowisk przyjaznych dla osób z demencją, wspieranie codziennych działań i utrzymywanie zdolności, praca z rodzinami i zrozumienie stresu opiekuna oraz promowanie jakości życia i dobrostanu dla osób żyjących z demencją.',
                'order' => 5,
                'active' => true,
            ],
            [
                'title_en' => 'First Aid, Emergency Response & Basic Life Support',
                'description_en' => 'Certified first aid training (renewable annually) covering CPR and basic life support, managing choking in adults, dealing with falls and fractures, treating burns and scalds, managing bleeding and wounds, recognizing and responding to heart attacks and strokes, diabetic emergencies (hypo/hyperglycemia), seizures and epilepsy, allergic reactions, and shock. Learn the DRSABC approach, when and how to call emergency services, what information to provide, and how to keep calm in emergencies. Includes practical scenarios and hands-on practice with mannequins and equipment.',
                'title_pl' => 'Pierwsza Pomoc, Reakcja Awaryjna i Podstawowe Wsparcie Życia',
                'description_pl' => 'Certyfikowane szkolenie z pierwszej pomocy (odnawiane corocznie) obejmujące RKO i podstawowe wsparcie życia, zarządzanie zadławieniem u dorosłych, radzenie sobie z upadkami i złamaniami, leczenie oparzeń, zarządzanie krwawieniem i ranami, rozpoznawanie i reagowanie na ataki serca i udary, nagłe przypadki cukrzycowe (hipo/hiperglikemia), napady padaczkowe i epilepsję, reakcje alergiczne i wstrząs. Naucz się podejścia DRSABC, kiedy i jak dzwonić po służby ratunkowe, jakie informacje przekazać i jak zachować spokój w sytuacjach awaryjnych. Obejmuje praktyczne scenariusze i praktyczne ćwiczenia z manekinami i sprzętem.',
                'order' => 6,
                'active' => true,
            ],
            [
                'title_en' => 'Nutrition, Hydration & Meal Preparation',
                'description_en' => 'Comprehensive nutrition training covering nutritional needs of older adults, understanding common dietary requirements (diabetic, low sodium, soft diet, pureed, etc.), food safety and hygiene, meal planning on a budget, preparing nutritious and appetizing meals, supporting clients with eating and drinking, recognizing signs of malnutrition and dehydration, managing poor appetite and swallowing difficulties, cultural and religious dietary considerations, and encouraging adequate fluid intake. Includes practical cooking skills, adapting recipes for special diets, and making mealtimes enjoyable social occasions.',
                'title_pl' => 'Żywienie, Nawodnienie i Przygotowywanie Posiłków',
                'description_pl' => 'Kompleksowe szkolenie z zakresu żywienia obejmujące potrzeby żywieniowe osób starszych, zrozumienie powszechnych wymagań dietetycznych (cukrzycowych, niskosodowych, miękkiej diety, przecierów itp.), bezpieczeństwo i higienę żywności, planowanie posiłków na budżet, przygotowywanie pożywnych i apetycznych posiłków, wspieranie klientów w jedzeniu i piciu, rozpoznawanie oznak niedożywienia i odwodnienia, zarządzanie słabym apetytem i trudnościami w połykaniu, kulturowe i religijne względy dietetyczne oraz zachęcanie do odpowiedniego spożycia płynów. Obejmuje praktyczne umiejętności gotowania, dostosowywanie przepisów do specjalnych diet i czynienie posiłków przyjemnymi okazjami społecznymi.',
                'order' => 7,
                'active' => true,
            ],
            [
                'title_en' => 'Safeguarding Adults & Duty of Care',
                'description_en' => 'Critical training on protecting vulnerable adults from harm, abuse, and neglect. Covers the six types of abuse (physical, emotional/psychological, sexual, financial, neglect, discriminatory), recognizing signs and indicators of abuse, understanding why abuse happens and who might be at risk, your legal duty to report concerns and safeguarding procedures, whistleblowing and raising concerns about poor practice, maintaining professional boundaries, the Mental Capacity Act and consent, and supporting clients who lack capacity. Learn about local safeguarding authorities, reporting procedures, and how to document concerns properly.',
                'title_pl' => 'Ochrona Dorosłych i Obowiązek Opieki',
                'description_pl' => 'Kluczowe szkolenie w zakresie ochrony wrażliwych dorosłych przed krzywdą, nadużyciami i zaniedbaniem. Obejmuje sześć rodzajów nadużyć (fizyczne, emocjonalne/psychologiczne, seksualne, finansowe, zaniedbanie, dyskryminujące), rozpoznawanie oznak i wskaźników nadużyć, zrozumienie, dlaczego dochodzi do nadużyć i kto może być zagrożony, Twój prawny obowiązek zgłaszania obaw i procedury ochrony, zgłaszanie nieprawidłowości i podnoszenie obaw o złe praktyki, utrzymywanie granic zawodowych, ustawę o zdolności umysłowej i zgodę oraz wspieranie klientów, którzy nie mają zdolności. Dowiedz się o lokalnych władzach ochrony, procedurach zgłaszania i jak prawidłowo dokumentować obawy.',
                'order' => 8,
                'active' => true,
            ],
            [
                'title_en' => 'End of Life & Palliative Care Support',
                'description_en' => 'Sensitive and compassionate training in supporting clients and families through end of life. Covers understanding palliative care principles and goals, recognizing signs that someone may be approaching end of life, supporting comfort and dignity in the final stages, pain and symptom management support, emotional and spiritual support for clients, supporting families and understanding grief, practical aspects of end of life care at home, advance care planning and respecting wishes, your own emotions and self-care when caring for someone who is dying, and after-death care procedures. This module helps you provide compassionate, dignified care during this profound time.',
                'title_pl' => 'Opieka w Końcu Życia i Wsparcie Opieki Paliatywnej',
                'description_pl' => 'Wrażliwe i współczujące szkolenie we wspieraniu klientów i rodzin przez koniec życia. Obejmuje zrozumienie zasad i celów opieki paliatywnej, rozpoznawanie oznak, że ktoś może zbliżać się do końca życia, wspieranie komfortu i godności w końcowych etapach, wsparcie w zarządzaniu bólem i objawami, wsparcie emocjonalne i duchowe dla klientów, wspieranie rodzin i zrozumienie żałoby, praktyczne aspekty opieki w końcu życia w domu, planowanie opieki z wyprzedzeniem i szanowanie życzeń, Twoje własne emocje i samoopieka podczas opieki nad kimś, kto umiera, oraz procedury opieki po śmierci. Ten moduł pomaga zapewnić współczującą, godną opiekę w tym głębokim czasie.',
                'order' => 9,
                'active' => true,
            ],
            [
                'title_en' => 'Mental Health, Wellbeing & Emotional Support',
                'description_en' => 'Understanding mental health in older adults including common conditions such as depression, anxiety, and loneliness/social isolation. Learn to recognize signs and symptoms of mental health problems, supportive communication and active listening skills, promoting mental wellbeing through meaningful activities and social connection, when and how to seek professional mental health support, supporting clients taking mental health medications, understanding the link between physical and mental health, and creating a positive, therapeutic relationship. Includes awareness of the impact of life changes, loss, and transition on mental health.',
                'title_pl' => 'Zdrowie Psychiczne, Dobrostan i Wsparcie Emocjonalne',
                'description_pl' => 'Zrozumienie zdrowia psychicznego u osób starszych, w tym powszechne stany, takie jak depresja, lęk i samotność/izolacja społeczna. Naucz się rozpoznawać oznaki i objawy problemów ze zdrowiem psychicznym, wspierające umiejętności komunikacji i aktywnego słuchania, promowanie dobrostanu psychicznego poprzez znaczące działania i połączenie społeczne, kiedy i jak szukać profesjonalnego wsparcia zdrowia psychicznego, wspieranie klientów przyjmujących leki na zdrowie psychiczne, zrozumienie związku między zdrowiem fizycznym a psychicznym oraz tworzenie pozytywnej, terapeutycznej relacji. Obejmuje świadomość wpływu zmian życiowych, straty i przejścia na zdrowie psychiczne.',
                'order' => 10,
                'active' => true,
            ],
            [
                'title_en' => 'Communication Skills & Building Relationships',
                'description_en' => 'Advanced communication training covering verbal and non-verbal communication, active listening and empathy, communicating with people with hearing or visual impairments, supporting people with communication difficulties (aphasia, dysarthria), cultural sensitivity and diversity, handling difficult conversations and conflicts, working effectively with families and healthcare professionals, telephone communication and keeping others informed, and documentation and record-keeping. Learn to build trusting, professional relationships that enhance care quality and client satisfaction.',
                'title_pl' => 'Umiejętności Komunikacyjne i Budowanie Relacji',
                'description_pl' => 'Zaawansowane szkolenie komunikacyjne obejmujące komunikację werbalną i niewerbalną, aktywne słuchanie i empatię, komunikację z osobami z wadami słuchu lub wzroku, wspieranie osób z trudnościami w komunikacji (afazja, dyzartria), wrażliwość kulturową i różnorodność, radzenie sobie z trudnymi rozmowami i konfliktami, skuteczną pracę z rodzinami i profesjonalistami opieki zdrowotnej, komunikację telefoniczną i informowanie innych oraz dokumentację i prowadzenie zapisów. Naucz się budować zaufane, profesjonalne relacje, które poprawiają jakość opieki i satysfakcję klienta.',
                'order' => 11,
                'active' => true,
            ],
            [
                'title_en' => 'Condition-Specific Care: Stroke, Parkinson\'s & Diabetes',
                'description_en' => 'Specialized training for caring for clients with specific conditions. Stroke care includes understanding stroke effects, supporting recovery and rehabilitation, managing physical disabilities, and communication after stroke. Parkinson\'s care covers understanding symptoms and progression, medication management, supporting mobility and preventing falls, and managing tremors and rigidity. Diabetes care includes blood glucose monitoring, supporting medication and insulin administration, recognizing and responding to hypo/hyperglycemia, diabetic diet support, and foot care. This specialist knowledge helps you provide confident, effective care.',
                'title_pl' => 'Opieka Specyficzna dla Stanów: Udar, Parkinson i Cukrzyca',
                'description_pl' => 'Specjalistyczne szkolenie dla opieki nad klientami z określonymi stanami. Opieka po udarze obejmuje zrozumienie skutków udaru, wspieranie powrotu do zdrowia i rehabilitacji, zarządzanie niepełnosprawnościami fizycznymi i komunikację po udarze. Opieka nad Parkinsonem obejmuje zrozumienie objawów i postępu, zarządzanie lekami, wspieranie mobilności i zapobieganie upadkom oraz zarządzanie drżeniem i sztywnością. Opieka nad cukrzycą obejmuje monitorowanie glukozy we krwi, wspieranie podawania leków i insuliny, rozpoznawanie i reagowanie na hipo/hiperglikemię, wsparcie diety cukrzycowej i opiekę nad stopami. Ta specjalistyczna wiedza pomaga zapewnić pewną, skuteczną opiekę.',
                'order' => 12,
                'active' => true,
            ],
            [
                'title_en' => 'Activities, Engagement & Quality of Life',
                'description_en' => 'Training focused on enhancing client wellbeing through meaningful activities and social engagement. Covers understanding the importance of occupation and purpose, assessing interests and abilities, planning and facilitating activities (hobbies, crafts, games, exercise, reminiscence, music, reading), supporting social connections and community involvement, adapting activities for physical or cognitive limitations, encouraging independence and choice, and using activity to support physical, mental, and emotional health. Learn to make every day meaningful and enjoyable for your clients.',
                'title_pl' => 'Działania, Zaangażowanie i Jakość Życia',
                'description_pl' => 'Szkolenie skoncentrowane na poprawie dobrostanu klienta poprzez znaczące działania i zaangażowanie społeczne. Obejmuje zrozumienie znaczenia zajęcia i celu, ocenę zainteresowań i zdolności, planowanie i ułatwianie działań (hobby, rękodzieło, gry, ćwiczenia, wspominanie, muzyka, czytanie), wspieranie połączeń społecznych i zaangażowania w społeczność, dostosowywanie działań do ograniczeń fizycznych lub poznawczych, zachęcanie do niezależności i wyboru oraz wykorzystywanie działań do wspierania zdrowia fizycznego, psychicznego i emocjonalnego. Naucz się czynić każdy dzień znaczącym i przyjemnym dla swoich klientów.',
                'order' => 13,
                'active' => true,
            ],
            [
                'title_en' => 'Professional Development & Career Progression',
                'description_en' => 'Supporting your ongoing growth as a care professional. Covers reflective practice and learning from experience, supervision and professional support, continuing professional development (CPD), pathways to qualifications (NVQ Level 2 and 3), specialist training opportunities (dementia champion, end of life care, diabetes care), progression to senior carer and coordinator roles, mentoring and supporting new carers, leadership skills development, and understanding quality standards and best practice. This module helps you map your career journey and achieve your professional goals.',
                'title_pl' => 'Rozwój Zawodowy i Postęp w Karierze',
                'description_pl' => 'Wspieranie Twojego ciągłego rozwoju jako profesjonalisty opieki. Obejmuje praktykę refleksyjną i uczenie się z doświadczenia, nadzór i wsparcie zawodowe, ciągły rozwój zawodowy (CPD), ścieżki do kwalifikacji (NVQ Level 2 i 3), możliwości szkolenia specjalistycznego (mistrz demencji, opieka w końcu życia, opieka nad cukrzycą), postęp do ról starszego opiekuna i koordynatora, mentorowanie i wspieranie nowych opiekunów, rozwój umiejętności przywódczych oraz zrozumienie standardów jakości i najlepszych praktyk. Ten moduł pomaga zmapować Twoją podróż kariery i osiągnąć Twoje cele zawodowe.',
                'order' => 14,
                'active' => true,
            ],
            [
                'title_en' => 'Self-Care, Resilience & Preventing Burnout',
                'description_en' => 'Essential training for maintaining your own wellbeing while caring for others. Covers recognizing signs of stress and burnout, strategies for managing work-related stress, maintaining work-life balance in live-in care, the importance of using your time off effectively, physical self-care (sleep, nutrition, exercise), emotional self-care and processing difficult experiences, accessing support when you need it, building resilience and coping strategies, and preventing compassion fatigue. Learn that taking care of yourself is essential to providing excellent care for others.',
                'title_pl' => 'Samoopiek a, Odporność i Zapobieganie Wypaleniu',
                'description_pl' => 'Podstawowe szkolenie dla utrzymania własnego dobrostanu podczas opieki nad innymi. Obejmuje rozpoznawanie oznak stresu i wypalenia, strategie zarządzania stresem związanym z pracą, utrzymywanie równowagi między pracą a życiem w opiece domowej, znaczenie efektywnego wykorzystywania czasu wolnego, samoopieka fizyczna (sen, żywienie, ćwiczenia), samoopiek a emocjonalna i przetwarzanie trudnych doświadczeń, dostęp do wsparcia, gdy go potrzebujesz, budowanie odporności i strategii radzenia sobie oraz zapobieganie zmęczeniu współczuciem. Dowiedz się, że dbanie o siebie jest niezbędne do zapewnienia doskonałej opieki nad innymi.',
                'order' => 15,
                'active' => true,
            ],
        ];

        foreach ($modules as $module) {
            DB::table('training_modules')->insert([
                'title_en' => $module['title_en'],
                'description_en' => $module['description_en'],
                'title_pl' => $module['title_pl'],
                'description_pl' => $module['description_pl'],
                'order' => $module['order'],
                'active' => $module['active'],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
