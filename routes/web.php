<?php

use App\Http\Controllers\Admin\BenefitController;
use App\Http\Controllers\Admin\CareJobController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\JobApplicationController as AdminJobApplicationController;
use App\Http\Controllers\Admin\JobPositionController;
use App\Http\Controllers\Admin\NewsArticleController;
use App\Http\Controllers\Admin\SectionController;
use App\Http\Controllers\Admin\SeoSettingController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\TrainingModuleController;
use App\Http\Controllers\CareFundingController;
use App\Http\Controllers\CareersController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\JobApplicationController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\LiveInCareController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ResourcesController;
use Illuminate\Support\Facades\Route;

// Public routes
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/live-in-care', [LiveInCareController::class, 'index'])->name('live-in-care');
Route::get('/care-funding', [CareFundingController::class, 'index'])->name('care-funding');
Route::get('/resources', [ResourcesController::class, 'index'])->name('resources');
Route::get('/careers', [CareersController::class, 'index'])->name('careers');
Route::get('/news', [NewsController::class, 'index'])->name('news');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');

// Job application public routes
Route::get('/apply', [JobApplicationController::class, 'create'])->name('job-applications.create');
Route::post('/apply', [JobApplicationController::class, 'store'])->name('job-applications.store');

// Language switcher
Route::post('/language/switch', [LanguageController::class, 'switch'])->name('language.switch');

// Admin routes group with auth and admin middleware
Route::prefix('admin')->middleware(['auth', 'admin'])->name('admin.')->group(function () {
    // Dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Content Management
    Route::resource('care-jobs', CareJobController::class);
    Route::resource('news-articles', NewsArticleController::class);
    Route::resource('job-applications', AdminJobApplicationController::class)->only(['index', 'show', 'update', 'destroy']);

    // Resource routes
    Route::resource('sections', SectionController::class);
    Route::resource('faqs', FaqController::class);
    Route::resource('benefits', BenefitController::class);
    Route::resource('training-modules', TrainingModuleController::class);
    Route::resource('job-positions', JobPositionController::class);
    Route::resource('settings', SettingController::class);
    Route::resource('seo-settings', SeoSettingController::class);
});

require __DIR__.'/auth.php';
