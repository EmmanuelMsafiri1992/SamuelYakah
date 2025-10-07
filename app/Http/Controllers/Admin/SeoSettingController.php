<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\SeoSetting;
use Illuminate\Http\Request;
use Inertia\Inertia;

class SeoSettingController extends Controller
{
    public function index(Request $request)
    {
        $query = SeoSetting::query();

        if ($request->has('search') && $request->search) {
            $query->where('page', 'like', '%' . $request->search . '%');
        }

        $seoSettings = $query->orderBy('page')->paginate(15);

        return Inertia::render('Admin/SeoSettings/Index', [
            'seoSettings' => $seoSettings,
            'filters' => $request->only(['search'])
        ]);
    }

    public function create()
    {
        return Inertia::render('Admin/SeoSettings/Create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'page' => 'required|string|unique:seo_settings,page|max:255',
            'meta_title_en' => 'nullable|string|max:255',
            'meta_title_pl' => 'nullable|string|max:255',
            'meta_description_en' => 'nullable|string',
            'meta_description_pl' => 'nullable|string',
            'meta_keywords_en' => 'nullable|string',
            'meta_keywords_pl' => 'nullable|string',
            'og_title_en' => 'nullable|string|max:255',
            'og_title_pl' => 'nullable|string|max:255',
            'og_description_en' => 'nullable|string',
            'og_description_pl' => 'nullable|string',
            'og_image' => 'nullable|string',
            'schema_markup' => 'nullable|string',
            'is_active' => 'boolean',
        ]);

        SeoSetting::create($validated);

        return redirect()->route('admin.seo-settings.index')
            ->with('success', 'SEO settings created successfully.');
    }

    public function edit(SeoSetting $seoSetting)
    {
        return Inertia::render('Admin/SeoSettings/Edit', [
            'seoSetting' => $seoSetting
        ]);
    }

    public function update(Request $request, SeoSetting $seoSetting)
    {
        $validated = $request->validate([
            'page' => 'required|string|max:255|unique:seo_settings,page,' . $seoSetting->id,
            'meta_title_en' => 'nullable|string|max:255',
            'meta_title_pl' => 'nullable|string|max:255',
            'meta_description_en' => 'nullable|string',
            'meta_description_pl' => 'nullable|string',
            'meta_keywords_en' => 'nullable|string',
            'meta_keywords_pl' => 'nullable|string',
            'og_title_en' => 'nullable|string|max:255',
            'og_title_pl' => 'nullable|string|max:255',
            'og_description_en' => 'nullable|string',
            'og_description_pl' => 'nullable|string',
            'og_image' => 'nullable|string',
            'schema_markup' => 'nullable|string',
            'is_active' => 'boolean',
        ]);

        $seoSetting->update($validated);

        return redirect()->route('admin.seo-settings.index')
            ->with('success', 'SEO settings updated successfully.');
    }

    public function destroy(SeoSetting $seoSetting)
    {
        $seoSetting->delete();

        return redirect()->route('admin.seo-settings.index')
            ->with('success', 'SEO settings deleted successfully.');
    }
}
