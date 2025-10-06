<?php

use App\Http\Controllers\Admin\BenefitController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\JobApplicationController as AdminJobApplicationController;
use App\Http\Controllers\Admin\SectionController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\TrainingModuleController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\JobApplicationController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

// Public routes
Route::get('/', [HomeController::class, 'index'])->name('home');

// Job application public routes
Route::get('/apply', [JobApplicationController::class, 'create'])->name('job-applications.create');
Route::post('/apply', [JobApplicationController::class, 'store'])->name('job-applications.store');

// Language switcher
Route::post('/language/switch', [LanguageController::class, 'switch'])->name('language.switch');

// Admin routes group with auth middleware
Route::prefix('admin')->middleware(['auth', 'verified'])->name('admin.')->group(function () {
    // Dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Resource routes
    Route::resource('sections', SectionController::class);
    Route::resource('faqs', FaqController::class);
    Route::resource('benefits', BenefitController::class);
    Route::resource('training-modules', TrainingModuleController::class);
    Route::resource('job-applications', AdminJobApplicationController::class);
    Route::resource('settings', SettingController::class);
});

// Profile routes
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
