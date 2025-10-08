<?php

namespace App\Http\Controllers;

use App\Models\Section;
use App\Models\Faq;
use App\Models\Benefit;
use App\Models\TrainingModule;
use App\Models\Setting;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class HomeController extends Controller
{
    /**
     * Display the home page with all active content.
     */
    public function index(): Response
    {
        $locale = app()->getLocale();

        // Fetch all active sections with translations
        $sections = Section::where('active', true)
            ->with('translations')
            ->orderBy('order')
            ->get()
            ->map(function ($section) use ($locale) {
                $translation = $section->getTranslation($locale);
                return [
                    'id' => $section->id,
                    'key' => $section->key,
                    'type' => $section->type,
                    'title' => $translation?->title,
                    'subtitle' => $translation?->subtitle,
                    'content' => $translation?->content,
                    'meta' => $translation?->meta,
                ];
            });

        // Fetch all active FAQs
        $faqs = Faq::where('active', true)
            ->orderBy('order')
            ->get()
            ->map(function ($faq) use ($locale) {
                $questionField = "question_{$locale}";
                $answerField = "answer_{$locale}";
                return [
                    'id' => $faq->id,
                    'question' => $faq->$questionField ?? $faq->question_en,
                    'answer' => $faq->$answerField ?? $faq->answer_en,
                ];
            });

        // Fetch all active benefits
        $benefits = Benefit::where('active', true)
            ->orderBy('order')
            ->get()
            ->map(function ($benefit) use ($locale) {
                $titleField = "title_{$locale}";
                $descriptionField = "description_{$locale}";
                return [
                    'id' => $benefit->id,
                    'title' => $benefit->$titleField ?? $benefit->title_en,
                    'description' => $benefit->$descriptionField ?? $benefit->description_en,
                    'icon' => $benefit->icon,
                ];
            });

        // Fetch all active training modules
        $trainingModules = TrainingModule::where('active', true)
            ->orderBy('order')
            ->get()
            ->map(function ($module) use ($locale) {
                $titleField = "title_{$locale}";
                $descriptionField = "description_{$locale}";
                return [
                    'id' => $module->id,
                    'title' => $module->$titleField ?? $module->title_en,
                    'description' => $module->$descriptionField ?? $module->description_en,
                ];
            });

        // Fetch settings
        $settings = Setting::all()->keyBy('key');

        return Inertia::render('Home/Index', [
            'sections' => $sections,
            'faqs' => $faqs,
            'benefits' => $benefits,
            'trainingModules' => $trainingModules,
            'settings' => $settings,
            'currentLocale' => $locale,
        ]);
    }
}
