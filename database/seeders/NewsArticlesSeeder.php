<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NewsArticlesSeeder extends Seeder
{
    public function run(): void
    {
        $articles = [
            [
                'title_en' => 'Celebrating Excellence in Care',
                'title_pl' => 'Świętujemy doskonałość w opiece',
                'title_nl' => 'Excellentie in zorg vieren',
                'excerpt_en' => 'Our team\'s dedication to providing outstanding personalized care continues to set new standards in the home care industry.',
                'excerpt_pl' => 'Zaangażowanie naszego zespołu w zapewnianie wybitnej spersonalizowanej opieki nadal ustanawia nowe standardy w branży opieki domowej.',
                'excerpt_nl' => 'De toewijding van ons team om uitstekende gepersonaliseerde zorg te bieden, blijft nieuwe normen stellen in de thuiszorgsector.',
                'category_en' => 'Awards',
                'category_pl' => 'Nagrody',
                'category_nl' => 'Prijzen',
                'date' => 'March 2025',
                'slug' => 'celebrating-excellence-in-care',
            ],
            [
                'title_en' => 'Understanding Dementia Care at Home',
                'title_pl' => 'Zrozumienie opieki nad osobami z demencją w domu',
                'title_nl' => 'Dementiezorg thuis begrijpen',
                'excerpt_en' => 'Discover why home care can be a better alternative to residential care for those living with dementia.',
                'excerpt_pl' => 'Odkryj, dlaczego opieka domowa może być lepszą alternatywą dla opieki stacjonarnej dla osób żyjących z demencją.',
                'excerpt_nl' => 'Ontdek waarom thuiszorg een beter alternatief kan zijn voor residentiële zorg voor mensen met dementie.',
                'category_en' => 'Care Insights',
                'category_pl' => 'Wgląd w opiekę',
                'category_nl' => 'Zorg inzichten',
                'date' => 'February 2025',
                'slug' => 'understanding-dementia-care-at-home',
            ],
            [
                'title_en' => 'Technology in Home Care',
                'title_pl' => 'Technologia w opiece domowej',
                'title_nl' => 'Technologie in thuiszorg',
                'excerpt_en' => 'How we\'re embracing innovative technology to enhance the quality of care we provide to our clients.',
                'excerpt_pl' => 'Jak wykorzystujemy innowacyjną technologię, aby poprawić jakość opieki, którą zapewniamy naszym klientom.',
                'excerpt_nl' => 'Hoe we innovatieve technologie omarmen om de kwaliteit van de zorg die we aan onze cliënten bieden te verbeteren.',
                'category_en' => 'Innovation',
                'category_pl' => 'Innowacje',
                'category_nl' => 'Innovatie',
                'date' => 'January 2025',
                'slug' => 'technology-in-home-care',
            ],
            [
                'title_en' => 'Supporting Complex Care Needs',
                'title_pl' => 'Wsparcie złożonych potrzeb opiekuńczych',
                'title_nl' => 'Ondersteuning van complexe zorgbehoeften',
                'excerpt_en' => 'Our commitment to providing specialized care for individuals with complex medical conditions.',
                'excerpt_pl' => 'Nasze zaangażowanie w zapewnienie specjalistycznej opieki osobom ze złożonymi schorzeniami.',
                'excerpt_nl' => 'Onze toewijding om gespecialiseerde zorg te bieden voor personen met complexe medische aandoeningen.',
                'category_en' => 'Care Services',
                'category_pl' => 'Usługi opiekuńcze',
                'category_nl' => 'Zorgdiensten',
                'date' => 'December 2024',
                'slug' => 'supporting-complex-care-needs',
            ],
        ];

        foreach ($articles as $article) {
            DB::table('news_articles')->insert($article);
        }

        $this->command->info('News articles seeded successfully!');
    }
}
