<?php

use App\Http\Controllers\Admin\ContentManagementController;
use Illuminate\Support\Facades\Route;

/**
 * Content Management Routes
 * Professional interface for managing all website content
 */

Route::middleware(['auth', 'admin'])->prefix('admin')->name('admin.')->group(function () {
    // Content Management Dashboard
    Route::get('/content', [ContentManagementController::class, 'index'])->name('content.index');

    // Bulk Operations
    Route::post('/content/bulk-update', [ContentManagementController::class, 'bulkUpdate'])->name('content.bulk-update');

    // Import/Export
    Route::get('/content/export', [ContentManagementController::class, 'export'])->name('content.export');
    Route::post('/content/import', [ContentManagementController::class, 'import'])->name('content.import');
});
