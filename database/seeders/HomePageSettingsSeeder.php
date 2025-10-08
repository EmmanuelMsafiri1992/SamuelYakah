<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Setting;

class HomePageSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            // Hero Section
            [
                'key' => 'home_hero_title',
                'value_en' => 'Live-in care, your way.',
                'value_pl' => 'Opieka w domu, na Twój sposób.',
                'value_nl' => 'Thuiszorg, op jouw manier.',
                'type' => 'text',
                'group' => 'home_hero'
            ],
            [
                'key' => 'home_hero_subtitle',
                'value_en' => 'Sunrise & Sunset Home Care provides a trusted, nurse-led live-in care service',
                'value_pl' => 'Sunrise & Sunset Home Care zapewnia zaufaną, kierowaną przez pielęgniarki usługę opieki w domu',
                'value_nl' => 'Sunrise & Sunset Home Care biedt een betrouwbare, door verpleegkundigen geleide thuiszorgdienst',
                'type' => 'text',
                'group' => 'home_hero'
            ],
            [
                'key' => 'home_hero_description',
                'value_en' => 'Serving London and surrounding areas with compassionate, personalized care',
                'value_pl' => 'Obsługujemy Londyn i okolice z opieką pełną współczucia i dostosowaną do indywidualnych potrzeb',
                'value_nl' => 'Wij bedienen Londen en omgeving met meelevende, gepersonaliseerde zorg',
                'type' => 'text',
                'group' => 'home_hero'
            ],
            [
                'key' => 'home_hero_cta',
                'value_en' => 'Find out more',
                'value_pl' => 'Dowiedz się więcej',
                'value_nl' => 'Kom meer te weten',
                'type' => 'text',
                'group' => 'home_hero'
            ],

            // Why Choose Us Section
            [
                'key' => 'home_why_choose_title',
                'value_en' => 'Why choose us?',
                'value_pl' => 'Dlaczego my?',
                'value_nl' => 'Waarom kiezen voor ons?',
                'type' => 'text',
                'group' => 'home_why_choose'
            ],
            [
                'key' => 'home_why_choose_p1',
                'value_en' => 'At Sunrise & Sunset Home Care, we understand that choosing care is a deeply personal decision. That\'s why we focus on carefully matching our dedicated care professionals with each client\'s unique needs and personality.',
                'value_pl' => 'W Sunrise & Sunset Home Care rozumiemy, że wybór opieki to głęboko osobista decyzja. Dlatego skupiamy się na starannym dopasowywaniu naszych oddanych specjalistów do unikalnych potrzeb i osobowości każdego klienta.',
                'value_nl' => 'Bij Sunrise & Sunset Home Care begrijpen we dat het kiezen van zorg een zeer persoonlijke beslissing is. Daarom richten we ons op het zorgvuldig matchen van onze toegewijde zorgprofessionals met de unieke behoeften en persoonlijkheid van elke cliënt.',
                'type' => 'textarea',
                'group' => 'home_why_choose'
            ],
            [
                'key' => 'home_why_choose_p2',
                'value_en' => 'Our nurse-led approach ensures the highest quality of care, while our commitment to personalized service means you or your loved one will receive attention that truly makes a difference.',
                'value_pl' => 'Nasze podejście kierowane przez pielęgniarki zapewnia najwyższą jakość opieki, a nasze zaangażowanie w spersonalizowaną usługę oznacza, że Ty lub Twoi bliscy otrzymacie uwagę, która naprawdę robi różnicę.',
                'value_nl' => 'Onze door verpleegkundigen geleide aanpak garandeert zorg van de hoogste kwaliteit, terwijl onze toewijding aan gepersonaliseerde service betekent dat u of uw dierbare aandacht ontvangt die echt het verschil maakt.',
                'type' => 'textarea',
                'group' => 'home_why_choose'
            ],
            [
                'key' => 'home_why_choose_cta',
                'value_en' => 'Learn about our services',
                'value_pl' => 'Poznaj nasze usługi',
                'value_nl' => 'Leer meer over onze diensten',
                'type' => 'text',
                'group' => 'home_why_choose'
            ],

            // Career Section
            [
                'key' => 'home_career_title',
                'value_en' => 'A care career like no other',
                'value_pl' => 'Kariera w opiece, jakiej nie ma nigdzie indziej',
                'value_nl' => 'Een zorgcarrière als geen ander',
                'type' => 'text',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_p1',
                'value_en' => 'Join our team of dedicated care professionals and embark on a rewarding career that truly makes a difference in people\'s lives.',
                'value_pl' => 'Dołącz do naszego zespołu oddanych specjalistów ds. opieki i rozpocznij satysfakcjonującą karierę, która naprawdę robi różnicę w życiu ludzi.',
                'value_nl' => 'Sluit je aan bij ons team van toegewijde zorgprofessionals en begin aan een lonende carrière die echt het verschil maakt in het leven van mensen.',
                'type' => 'textarea',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_p2',
                'value_en' => 'We offer competitive pay, comprehensive training, and ongoing support. Whether you\'re experienced in care or looking to start a new career path, we provide everything you need to succeed.',
                'value_pl' => 'Oferujemy konkurencyjne wynagrodzenie, kompleksowe szkolenie i ciągłe wsparcie. Niezależnie od tego, czy masz doświadczenie w opiece, czy szukasz nowej ścieżki kariery, zapewniamy wszystko, czego potrzebujesz, aby odnieść sukces.',
                'value_nl' => 'We bieden concurrerende beloning, uitgebreide training en voortdurende ondersteuning. Of je nu ervaring hebt in de zorg of op zoek bent naar een nieuw carrièrepad, wij bieden alles wat je nodig hebt om te slagen.',
                'type' => 'textarea',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_benefit_1',
                'value_en' => '£750-£950 per week with excellent benefits',
                'value_pl' => '£750-£950 tygodniowo z doskonałymi benefitami',
                'value_nl' => '£750-£950 per week met uitstekende voorzieningen',
                'type' => 'text',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_benefit_2',
                'value_en' => 'Comprehensive training and development',
                'value_pl' => 'Kompleksowe szkolenia i rozwój',
                'value_nl' => 'Uitgebreide training en ontwikkeling',
                'type' => 'text',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_benefit_3',
                'value_en' => '24/7 support from our dedicated team',
                'value_pl' => 'Wsparcie 24/7 od naszego oddanego zespołu',
                'value_nl' => '24/7 ondersteuning van ons toegewijde team',
                'type' => 'text',
                'group' => 'home_career'
            ],
            [
                'key' => 'home_career_cta',
                'value_en' => 'Explore career opportunities',
                'value_pl' => 'Poznaj możliwości kariery',
                'value_nl' => 'Ontdek carrièremogelijkheden',
                'type' => 'text',
                'group' => 'home_career'
            ],

            // Service Area Section
            [
                'key' => 'home_service_area_title',
                'value_en' => 'Live-in care in London and beyond',
                'value_pl' => 'Opieka w domu w Londynie i okolicach',
                'value_nl' => 'Thuiszorg in Londen en daarbuiten',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_p1',
                'value_en' => 'We\'ve been providing exceptional live-in care services across London and the surrounding areas, helping people maintain their independence and quality of life in the comfort of their own homes.',
                'value_pl' => 'Świadczymy wyjątkowe usługi opieki w domu w Londynie i okolicach, pomagając ludziom zachować niezależność i jakość życia w komforcie własnego domu.',
                'value_nl' => 'We bieden al jaren uitzonderlijke thuiszorgdiensten in Londen en omgeving, waarbij we mensen helpen hun onafhankelijkheid en levenskwaliteit te behouden in het comfort van hun eigen huis.',
                'type' => 'textarea',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_p2',
                'value_en' => 'Our focus is on ensuring safety, contentment, and autonomy for every client. We understand that home is where the heart is, and we\'re committed to helping you or your loved one stay there with the support you need.',
                'value_pl' => 'Koncentrujemy się na zapewnieniu bezpieczeństwa, zadowolenia i autonomii każdemu klientowi. Rozumiemy, że dom jest miejscem, gdzie jest serce, i jesteśmy zobowiązani do pomocy Tobie lub Twoim bliskim w pozostaniu tam z wsparciem, którego potrzebują.',
                'value_nl' => 'Onze focus ligt op het waarborgen van veiligheid, tevredenheid en autonomie voor elke cliënt. We begrijpen dat thuis is waar het hart is, en we zijn toegewijd om u of uw dierbare te helpen daar te blijven met de ondersteuning die u nodig hebt.',
                'type' => 'textarea',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_1_value',
                'value_en' => '24/7',
                'value_pl' => '24/7',
                'value_nl' => '24/7',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_1_label',
                'value_en' => 'Support Available',
                'value_pl' => 'Dostępne wsparcie',
                'value_nl' => 'Ondersteuning beschikbaar',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_2_value',
                'value_en' => '100%',
                'value_pl' => '100%',
                'value_nl' => '100%',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_2_label',
                'value_en' => 'Personalized Care',
                'value_pl' => 'Spersonalizowana opieka',
                'value_nl' => 'Persoonlijke zorg',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_3_value',
                'value_en' => 'CQC',
                'value_pl' => 'CQC',
                'value_nl' => 'CQC',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_stat_3_label',
                'value_en' => 'Registered',
                'value_pl' => 'Zarejestrowany',
                'value_nl' => 'Geregistreerd',
                'type' => 'text',
                'group' => 'home_service_area'
            ],
            [
                'key' => 'home_service_area_cta',
                'value_en' => 'Read more about our services',
                'value_pl' => 'Przeczytaj więcej o naszych usługach',
                'value_nl' => 'Lees meer over onze diensten',
                'type' => 'text',
                'group' => 'home_service_area'
            ],

            // Services Overview Section
            [
                'key' => 'home_services_title',
                'value_en' => 'Our Services',
                'value_pl' => 'Nasze usługi',
                'value_nl' => 'Onze diensten',
                'type' => 'text',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_subtitle',
                'value_en' => 'Comprehensive care solutions tailored to your needs',
                'value_pl' => 'Kompleksowe rozwiązania opiekuńcze dostosowane do Twoich potrzeb',
                'value_nl' => 'Uitgebreide zorgoplossingen op maat van uw behoeften',
                'type' => 'text',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_livein_title',
                'value_en' => 'Live-in Care',
                'value_pl' => 'Opieka w domu',
                'value_nl' => 'Inwoondienst',
                'type' => 'text',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_livein_desc',
                'value_en' => '24/7 dedicated care in the comfort of your own home with a professional caregiver',
                'value_pl' => 'Całodobowa dedykowana opieka w komforcie własnego domu z profesjonalnym opiekunem',
                'value_nl' => '24/7 toegewijde zorg in het comfort van uw eigen huis met een professionele zorgverlener',
                'type' => 'textarea',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_funding_title',
                'value_en' => 'Care Funding',
                'value_pl' => 'Finansowanie opieki',
                'value_nl' => 'Zorgfinanciering',
                'type' => 'text',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_funding_desc',
                'value_en' => 'Guidance on funding options including self-funding, local authority support, and NHS CHC',
                'value_pl' => 'Wskazówki dotyczące opcji finansowania, w tym samofinansowania, wsparcia władz lokalnych i NHS CHC',
                'value_nl' => 'Begeleiding bij financieringsopties, waaronder zelffinanciering, lokale overheidssteun en NHS CHC',
                'type' => 'textarea',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_careers_title',
                'value_en' => 'Career Opportunities',
                'value_pl' => 'Możliwości kariery',
                'value_nl' => 'Carrièremogelijkheden',
                'type' => 'text',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_careers_desc',
                'value_en' => 'Join our team of dedicated professionals and make a real difference in people\'s lives',
                'value_pl' => 'Dołącz do naszego zespołu oddanych profesjonalistów i wprowadź prawdziwą zmianę w życiu ludzi',
                'value_nl' => 'Sluit je aan bij ons team van toegewijde professionals en maak echt het verschil in het leven van mensen',
                'type' => 'textarea',
                'group' => 'home_services'
            ],
            [
                'key' => 'home_services_learn_more',
                'value_en' => 'Learn more',
                'value_pl' => 'Dowiedz się więcej',
                'value_nl' => 'Kom meer te weten',
                'type' => 'text',
                'group' => 'home_services'
            ],

            // Job Opportunities Section
            [
                'key' => 'home_jobs_title',
                'value_en' => 'Current Job Opportunities',
                'value_pl' => 'Aktualne oferty pracy',
                'value_nl' => 'Huidige vacatures',
                'type' => 'text',
                'group' => 'home_jobs'
            ],
            [
                'key' => 'home_jobs_subtitle',
                'value_en' => 'Join our team and make a real difference in people\'s lives',
                'value_pl' => 'Dołącz do naszego zespołu i wprowadź prawdziwą zmianę w życiu ludzi',
                'value_nl' => 'Sluit je aan bij ons team en maak echt het verschil in het leven van mensen',
                'type' => 'text',
                'group' => 'home_jobs'
            ],
            [
                'key' => 'home_jobs_apply_now',
                'value_en' => 'Apply Now',
                'value_pl' => 'Aplikuj teraz',
                'value_nl' => 'Nu solliciteren',
                'type' => 'text',
                'group' => 'home_jobs'
            ],
            [
                'key' => 'home_jobs_requirements',
                'value_en' => 'Requirements:',
                'value_pl' => 'Wymagania:',
                'value_nl' => 'Vereisten:',
                'type' => 'text',
                'group' => 'home_jobs'
            ],
            [
                'key' => 'home_jobs_not_found',
                'value_en' => 'Can\'t find the right role? We\'re always looking for talented care professionals.',
                'value_pl' => 'Nie możesz znaleźć odpowiedniej roli? Zawsze szukamy utalentowanych specjalistów ds. opieki.',
                'value_nl' => 'Kan je niet de juiste rol vinden? We zijn altijd op zoek naar getalenteerde zorgprofessionals.',
                'type' => 'textarea',
                'group' => 'home_jobs'
            ],
            [
                'key' => 'home_jobs_view_all',
                'value_en' => 'View all career opportunities',
                'value_pl' => 'Zobacz wszystkie możliwości kariery',
                'value_nl' => 'Bekijk alle carrièremogelijkheden',
                'type' => 'text',
                'group' => 'home_jobs'
            ],

            // Application Modal
            [
                'key' => 'home_modal_apply_title',
                'value_en' => 'Apply for',
                'value_pl' => 'Aplikuj na stanowisko',
                'value_nl' => 'Solliciteer voor',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_full_name',
                'value_en' => 'Full Name',
                'value_pl' => 'Imię i nazwisko',
                'value_nl' => 'Volledige naam',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_email',
                'value_en' => 'Email Address',
                'value_pl' => 'Adres e-mail',
                'value_nl' => 'E-mailadres',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_phone',
                'value_en' => 'Phone Number',
                'value_pl' => 'Numer telefonu',
                'value_nl' => 'Telefoonnummer',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience',
                'value_en' => 'Years of Care Experience',
                'value_pl' => 'Lata doświadczenia w opiece',
                'value_nl' => 'Jaren ervaring in de zorg',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_select',
                'value_en' => 'Please select...',
                'value_pl' => 'Proszę wybrać...',
                'value_nl' => 'Selecteer alstublieft...',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_none',
                'value_en' => 'No experience',
                'value_pl' => 'Brak doświadczenia',
                'value_nl' => 'Geen ervaring',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_less1',
                'value_en' => 'Less than 1 year',
                'value_pl' => 'Mniej niż rok',
                'value_nl' => 'Minder dan 1 jaar',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_1_2',
                'value_en' => '1-2 years',
                'value_pl' => '1-2 lata',
                'value_nl' => '1-2 jaar',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_3_5',
                'value_en' => '3-5 years',
                'value_pl' => '3-5 lat',
                'value_nl' => '3-5 jaar',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_experience_5plus',
                'value_en' => '5+ years',
                'value_pl' => '5+ lat',
                'value_nl' => '5+ jaar',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_cover_letter',
                'value_en' => 'Cover Letter / Why do you want to join us?',
                'value_pl' => 'List motywacyjny / Dlaczego chcesz do nas dołączyć?',
                'value_nl' => 'Motivatiebrief / Waarom wil je bij ons werken?',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_cover_letter_placeholder',
                'value_en' => 'Tell us about yourself and why you\'d be a great fit for this role...',
                'value_pl' => 'Opowiedz nam o sobie i dlaczego byłbyś idealnym kandydatem na tę rolę...',
                'value_nl' => 'Vertel ons over jezelf en waarom je perfect bent voor deze rol...',
                'type' => 'textarea',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_cv_note',
                'value_en' => '<strong>Note:</strong> After submitting this form, please email your CV to',
                'value_pl' => '<strong>Uwaga:</strong> Po przesłaniu tego formularza, wyślij swoje CV na adres',
                'value_nl' => '<strong>Let op:</strong> Na het indienen van dit formulier, stuur uw CV naar',
                'type' => 'textarea',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_cv_subject',
                'value_en' => 'with the subject line "Application for',
                'value_pl' => 'z tematem "Aplikacja na stanowisko',
                'value_nl' => 'met als onderwerp "Sollicitatie voor',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_cancel',
                'value_en' => 'Cancel',
                'value_pl' => 'Anuluj',
                'value_nl' => 'Annuleren',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_submit',
                'value_en' => 'Submit Application',
                'value_pl' => 'Wyślij aplikację',
                'value_nl' => 'Sollicitatie indienen',
                'type' => 'text',
                'group' => 'home_modal'
            ],
            [
                'key' => 'home_modal_privacy',
                'value_en' => 'By submitting this application, you consent to us processing your data in accordance with our Privacy Policy.',
                'value_pl' => 'Przesyłając tę aplikację, zgadzasz się na przetwarzanie danych osobowych zgodnie z naszą Polityką Prywatności.',
                'value_nl' => 'Door deze sollicitatie in te dienen, stemt u ermee in dat wij uw gegevens verwerken in overeenstemming met ons Privacybeleid.',
                'type' => 'textarea',
                'group' => 'home_modal'
            ],

            // Final CTA Section
            [
                'key' => 'home_final_cta_title',
                'value_en' => 'Ready to learn more about our care services?',
                'value_pl' => 'Gotowy, aby dowiedzieć się więcej o naszych usługach opiekuńczych?',
                'value_nl' => 'Klaar om meer te weten te komen over onze zorgdiensten?',
                'type' => 'text',
                'group' => 'home_final_cta'
            ],
            [
                'key' => 'home_final_cta_subtitle',
                'value_en' => 'Contact our friendly team today for a free, no-obligation consultation',
                'value_pl' => 'Skontaktuj się z naszym przyjaznym zespołem już dziś, aby uzyskać bezpłatną, niezobowiązującą konsultację',
                'value_nl' => 'Neem vandaag nog contact op met ons vriendelijke team voor een gratis, vrijblijvend consult',
                'type' => 'text',
                'group' => 'home_final_cta'
            ],
            [
                'key' => 'home_final_cta_call',
                'value_en' => 'Call +44 20 3239 1227',
                'value_pl' => 'Zadzwoń +44 20 3239 1227',
                'value_nl' => 'Bel +44 20 3239 1227',
                'type' => 'text',
                'group' => 'home_final_cta'
            ],
            [
                'key' => 'home_final_cta_contact',
                'value_en' => 'Contact Us Online',
                'value_pl' => 'Skontaktuj się z nami online',
                'value_nl' => 'Contact ons online',
                'type' => 'text',
                'group' => 'home_final_cta'
            ],

            // Job Listings - Job 1
            [
                'key' => 'home_job_1_title',
                'value_en' => 'Live-in Care Professional',
                'value_pl' => 'Specjalista ds. opieki w domu',
                'value_nl' => 'Inwonende zorgprofessional',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_location',
                'value_en' => 'London & Surrounding Areas',
                'value_pl' => 'Londyn i okolice',
                'value_nl' => 'Londen en omstreken',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_type',
                'value_en' => 'Full-time',
                'value_pl' => 'Pełny etat',
                'value_nl' => 'Voltijds',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_salary',
                'value_en' => '£750 - £950 per week',
                'value_pl' => '£750 - £950 tygodniowo',
                'value_nl' => '£750 - £950 per week',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_description',
                'value_en' => 'Join our team as a live-in care professional. Provide compassionate, personalized care to clients in their own homes.',
                'value_pl' => 'Dołącz do naszego zespołu jako specjalista ds. opieki w domu. Zapewniaj współczującą, spersonalizowaną opiekę klientom w ich własnych domach.',
                'value_nl' => 'Sluit je aan bij ons team als inwonende zorgprofessional. Bied meelevende, gepersonaliseerde zorg aan cliënten in hun eigen huis.',
                'type' => 'textarea',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_req_1',
                'value_en' => 'Experience in care (preferred but not essential)',
                'value_pl' => 'Doświadczenie w opiece (preferowane, ale nie wymagane)',
                'value_nl' => 'Ervaring in de zorg (de voorkeur, maar niet essentieel)',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_req_2',
                'value_en' => 'Compassionate and patient nature',
                'value_pl' => 'Współczujący i cierpliwy charakter',
                'value_nl' => 'Meelevend en geduldig karakter',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_req_3',
                'value_en' => 'Good communication skills',
                'value_pl' => 'Dobre umiejętności komunikacyjne',
                'value_nl' => 'Goede communicatieve vaardigheden',
                'type' => 'text',
                'group' => 'home_job_1'
            ],
            [
                'key' => 'home_job_1_req_4',
                'value_en' => 'Right to work in the UK',
                'value_pl' => 'Prawo do pracy w Wielkiej Brytanii',
                'value_nl' => 'Recht om in het VK te werken',
                'type' => 'text',
                'group' => 'home_job_1'
            ],

            // Job Listings - Job 2
            [
                'key' => 'home_job_2_title',
                'value_en' => 'Senior Care Professional',
                'value_pl' => 'Starszy specjalista ds. opieki',
                'value_nl' => 'Senior zorgprofessional',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_location',
                'value_en' => 'London',
                'value_pl' => 'Londyn',
                'value_nl' => 'Londen',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_type',
                'value_en' => 'Full-time',
                'value_pl' => 'Pełny etat',
                'value_nl' => 'Voltijds',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_salary',
                'value_en' => '£850 - £1000 per week',
                'value_pl' => '£850 - £1000 tygodniowo',
                'value_nl' => '£850 - £1000 per week',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_description',
                'value_en' => 'Experienced care professional needed to provide specialized care for clients with complex needs.',
                'value_pl' => 'Potrzebny doświadczony specjalista ds. opieki do zapewnienia specjalistycznej opieki klientom o złożonych potrzebach.',
                'value_nl' => 'Ervaren zorgprofessional nodig om gespecialiseerde zorg te bieden aan cliënten met complexe behoeften.',
                'type' => 'textarea',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_req_1',
                'value_en' => 'Minimum 2 years care experience',
                'value_pl' => 'Minimum 2 lata doświadczenia w opiece',
                'value_nl' => 'Minimaal 2 jaar zorgervaring',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_req_2',
                'value_en' => 'NVQ Level 2 or equivalent',
                'value_pl' => 'NVQ poziom 2 lub równoważny',
                'value_nl' => 'NVQ niveau 2 of gelijkwaardig',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_req_3',
                'value_en' => 'Experience with complex care needs',
                'value_pl' => 'Doświadczenie z złożonymi potrzebami opiekuńczymi',
                'value_nl' => 'Ervaring met complexe zorgbehoeften',
                'type' => 'text',
                'group' => 'home_job_2'
            ],
            [
                'key' => 'home_job_2_req_4',
                'value_en' => 'Excellent references',
                'value_pl' => 'Doskonałe referencje',
                'value_nl' => 'Uitstekende referenties',
                'type' => 'text',
                'group' => 'home_job_2'
            ],

            // Job Listings - Job 3
            [
                'key' => 'home_job_3_title',
                'value_en' => 'Weekend Care Professional',
                'value_pl' => 'Specjalista ds. opieki weekendowej',
                'value_nl' => 'Weekend zorgprofessional',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_location',
                'value_en' => 'London & Surrounding Areas',
                'value_pl' => 'Londyn i okolice',
                'value_nl' => 'Londen en omstreken',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_type',
                'value_en' => 'Part-time',
                'value_pl' => 'Niepełny etat',
                'value_nl' => 'Deeltijd',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_salary',
                'value_en' => '£150 - £180 per day',
                'value_pl' => '£150 - £180 dziennie',
                'value_nl' => '£150 - £180 per dag',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_description',
                'value_en' => 'Weekend care professional needed to provide respite care and support to our existing clients.',
                'value_pl' => 'Potrzebny specjalista ds. opieki weekendowej do zapewnienia opieki zastępczej i wsparcia dla naszych obecnych klientów.',
                'value_nl' => 'Weekend zorgprofessional nodig om respijtzorg en ondersteuning te bieden aan onze bestaande cliënten.',
                'type' => 'textarea',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_req_1',
                'value_en' => 'Flexible and reliable',
                'value_pl' => 'Elastyczny i niezawodny',
                'value_nl' => 'Flexibel en betrouwbaar',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_req_2',
                'value_en' => 'Care experience preferred',
                'value_pl' => 'Doświadczenie w opiece preferowane',
                'value_nl' => 'Zorgervaring de voorkeur',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_req_3',
                'value_en' => 'Available for weekend shifts',
                'value_pl' => 'Dostępność w weekendy',
                'value_nl' => 'Beschikbaar voor weekenddiensten',
                'type' => 'text',
                'group' => 'home_job_3'
            ],
            [
                'key' => 'home_job_3_req_4',
                'value_en' => 'Own transport preferred',
                'value_pl' => 'Własny transport preferowany',
                'value_nl' => 'Eigen vervoer de voorkeur',
                'type' => 'text',
                'group' => 'home_job_3'
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
