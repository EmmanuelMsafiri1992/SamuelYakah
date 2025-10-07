<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('seo_settings', function (Blueprint $table) {
            $table->id();
            $table->string('page')->unique(); // home, about, contact, etc.
            $table->string('meta_title_en')->nullable();
            $table->string('meta_title_pl')->nullable();
            $table->text('meta_description_en')->nullable();
            $table->text('meta_description_pl')->nullable();
            $table->text('meta_keywords_en')->nullable();
            $table->text('meta_keywords_pl')->nullable();
            $table->string('og_title_en')->nullable();
            $table->string('og_title_pl')->nullable();
            $table->text('og_description_en')->nullable();
            $table->text('og_description_pl')->nullable();
            $table->string('og_image')->nullable();
            $table->text('schema_markup')->nullable(); // JSON-LD structured data
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('seo_settings');
    }
};
