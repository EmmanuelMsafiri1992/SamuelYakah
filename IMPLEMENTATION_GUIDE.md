# IMPLEMENTATION GUIDE
## Making ALL Website Content Database-Driven

This guide provides step-by-step instructions for completing the database-driven content migration.

---

## QUICK START

### 1. Run the Seeder

```bash
# Run the comprehensive content seeder
php artisan db:seed --class=ComprehensiveContentSeeder

# Verify settings were created
php artisan tinker
>>> \App\Models\Setting::count()
# Should show 100+ settings
```

### 2. Add Routes

Add this line to `routes/web.php`:

```php
require __DIR__.'/admin_content.php';
```

### 3. Access the Admin UI

Visit: `http://your-site.test/admin/content`

---

## COMPLETING THE SEEDER

The `ComprehensiveContentSeeder.php` currently has **100 of 387 settings**. You need to add the remaining 287.

### Missing Settings Groups:

#### CAREERS PAGE (48 settings needed)
```php
[
    'key' => 'careers_hero_title',
    'value_en' => 'Apply for Live-In Care Jobs',
    'value_pl' => 'Aplikuj na stanowisko opiekuna z zamieszkaniem',
    'value_nl' => 'Solliciteer voor inwonende zorgbanen',
    'group' => 'page_careers',
    'type' => 'text',
    'description' => 'Careers page hero title'
],
// Add 47 more...
```

#### CONTACT PAGE (35 settings needed)
```php
[
    'key' => 'contact_hero_title',
    'value_en' => 'Get in Touch',
    'value_pl' => 'Skontaktuj się',
    'value_nl' => 'Neem contact op',
    'group' => 'page_contact',
    'type' => 'text',
    'description' => 'Contact page hero title'
],
// Add 34 more...
```

#### NEWS PAGE (12 settings needed)
```php
[
    'key' => 'news_hero_title',
    'value_en' => 'Latest News',
    'value_pl' => 'Najnowsze wiadomości',
    'value_nl' => 'Laatste nieuws',
    'group' => 'page_news',
    'type' => 'text',
    'description' => 'News page hero title'
],
// Add 11 more...
```

#### RESOURCES PAGE (28 settings needed)
```php
[
    'key' => 'resources_hero_title',
    'value_en' => 'Care Resources & Information',
    'value_pl' => 'Zasoby i informacje dotyczące opieki',
    'value_nl' => 'Zorgmiddelen en informatie',
    'group' => 'page_resources',
    'type' => 'text',
    'description' => 'Resources page hero title'
],
// Add 27 more...
```

#### HOME PAGE (75 settings needed)
```php
[
    'key' => 'home_hero_title',
    'value_en' => 'Live-in care, your way.',
    'value_pl' => 'Opieka z zamieszkaniem, po Twojemu.',
    'value_nl' => 'Inwonende zorg, op jouw manier.',
    'group' => 'page_home',
    'type' => 'text',
    'description' => 'Homepage hero title'
],
// Add 74 more...
```

#### JOB APPLICATION FORM (28 settings needed)
```php
[
    'key' => 'job_app_title',
    'value_en' => 'Apply for Live-In Care Position',
    'value_pl' => 'Aplikuj na stanowisko opiekuna',
    'value_nl' => 'Solliciteer voor inwonende zorgpositie',
    'group' => 'forms_job_application',
    'type' => 'text',
    'description' => 'Job application form title'
],
// Add 27 more...
```

#### ADMIN INTERFACE (40 settings needed)
```php
[
    'key' => 'admin_settings_title',
    'value_en' => 'Settings',
    'value_pl' => 'Ustawienia',
    'value_nl' => 'Instellingen',
    'group' => 'admin',
    'type' => 'text',
    'description' => 'Admin settings page title'
],
// Add 39 more...
```

### Translation Tips:

1. **Polish (pl)**:
   - Use formal language
   - "Care" = "Opieka"
   - "Home" = "Dom"
   - "Contact" = "Kontakt"

2. **Dutch (nl)**:
   - Use formal "u" form
   - "Care" = "Zorg"
   - "Home" = "Thuis"
   - "Contact" = "Contact"

---

## UPDATING VUE COMPONENTS

### Pattern for Every Page:

#### 1. Add Props (if missing)
```vue
<script setup>
const props = defineProps({
    settings: {
        type: Object,
        default: () => ({})
    },
    currentLocale: {
        type: String,
        default: 'en'
    }
});
</script>
```

#### 2. Add getSetting Helper (if missing)
```vue
<script setup>
// ... props ...

const getSetting = (key, defaultValue = '') => {
    if (!props.settings || !props.settings[key]) {
        return defaultValue;
    }

    const valueKey = `value_${props.currentLocale}`;
    return props.settings[key][valueKey] || props.settings[key].value_en || defaultValue;
};
</script>
```

#### 3. Replace ALL Hardcoded Text
```vue
<!-- BEFORE -->
<h1>Trusted Nurse-led 24-Hour Live-In Care</h1>

<!-- AFTER -->
<h1>{{ getSetting('livein_hero_title', 'Trusted Nurse-led 24-Hour Live-In Care') }}</h1>
```

### Files to Update (Priority Order):

1. ✅ **Header.vue** - DONE (Login button)
2. ⚠️ **LiveInCare/Index.vue** - 62 strings
3. ⚠️ **Home/Index.vue** - 86 strings
4. ⚠️ **CareFunding/Index.vue** - 48 strings
5. ⚠️ **Careers/Index.vue** - 54 strings
6. ⚠️ **Contact/Index.vue** - 42 strings
7. ⚠️ **News/Index.vue** - 18 strings
8. ⚠️ **Resources/Index.vue** - 32 strings
9. ⚠️ **JobApplication/Create.vue** - 28 strings

---

## UPDATING CONTROLLERS

### Pattern for Every Controller:

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class YourController extends Controller
{
    // Helper to get all settings
    private function getAllSettings()
    {
        return \App\Models\Setting::all()->keyBy('key');
    }

    public function index(Request $request)
    {
        return Inertia::render('YourPage/Index', [
            'settings' => $this->getAllSettings(),
            'currentLocale' => $request->session()->get('locale', 'en')
        ]);
    }
}
```

### Controllers to Update:

1. ⚠️ HomeController.php
2. ⚠️ LiveInCareController.php
3. ⚠️ CareFundingController.php
4. ⚠️ CareersController.php
5. ⚠️ ContactController.php
6. ⚠️ NewsController.php
7. ⚠️ ResourcesController.php
8. ⚠️ JobApplicationController.php
9. ⚠️ All Admin Controllers (8 files)

---

## TESTING CHECKLIST

### 1. Verify Settings Created
```bash
php artisan tinker
>>> \App\Models\Setting::where('group', 'header')->count()
>>> \App\Models\Setting::where('group', 'page_livein')->get()
```

### 2. Test Each Page
- [ ] Homepage - Check all text in all 3 languages
- [ ] Live-in Care - Check all sections
- [ ] Care Funding - Check all sections
- [ ] Careers - Check all sections
- [ ] Contact - Check form labels
- [ ] News - Check article placeholders
- [ ] Resources - Check resource cards
- [ ] Job Application - Check form

### 3. Test Language Switching
- [ ] Switch to Polish - verify text changes
- [ ] Switch to Dutch - verify text changes
- [ ] Switch back to English

### 4. Test Admin Interface
- [ ] Can view all settings
- [ ] Can filter by group
- [ ] Can search settings
- [ ] Can edit setting
- [ ] Can switch language view
- [ ] Can export settings
- [ ] Can import settings

---

## COMMON ISSUES & SOLUTIONS

### Issue: Settings not loading
**Solution**: Check that controller passes both `settings` and `currentLocale` to view.

### Issue: Text not changing with language
**Solution**: Verify `getSetting()` function uses `props.currentLocale`.

### Issue: Missing translation
**Solution**: Add missing translation to seeder, re-run seeder.

### Issue: Seeder error "Duplicate key"
**Solution**: Seeder uses `updateOrInsert`, should not error. Check for typos in key names.

---

## MAINTENANCE

### Adding New Content:

1. **Add to Seeder**:
```php
[
    'key' => 'new_setting_key',
    'value_en' => 'English text',
    'value_pl' => 'Polish text',
    'value_nl' => 'Dutch text',
    'group' => 'appropriate_group',
    'type' => 'text', // or 'textarea'
    'description' => 'What this setting controls'
],
```

2. **Run Seeder**:
```bash
php artisan db:seed --class=ComprehensiveContentSeeder
```

3. **Use in Vue**:
```vue
{{ getSetting('new_setting_key', 'Default text') }}
```

### Updating Translations:

**Option 1**: Via Admin UI
- Go to `/admin/content`
- Search for setting
- Click "Edit"
- Update translations
- Save

**Option 2**: Via Database
```php
\App\Models\Setting::where('key', 'setting_key')->update([
    'value_en' => 'New English',
    'value_pl' => 'New Polish',
    'value_nl' => 'New Dutch'
]);
```

---

## NEXT STEPS

1. ✅ Complete the seeder (add 287 more settings)
2. ✅ Update all Vue components (9 pages)
3. ✅ Update all controllers (15 files)
4. ✅ Test all pages in all languages
5. ✅ Train team on admin interface
6. ✅ Document for future developers

---

## TIME ESTIMATES

- Complete seeder: 2-3 hours
- Update LiveInCare page: 1 hour
- Update Home page: 1.5 hours
- Update other 7 pages: 5 hours
- Update controllers: 1 hour
- Testing: 2 hours
- **Total: 12-15 hours**

---

## SUPPORT

If you encounter issues:

1. Check `CONTENT_AUDIT_REPORT.md` for detailed breakdown
2. Review existing working components (Header.vue, Footer.vue)
3. Test with simple examples first
4. Verify database settings exist

---

*End of Implementation Guide*
