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
        // Add Dutch language support to settings table
        Schema::table('settings', function (Blueprint $table) {
            $table->text('value_nl')->nullable()->after('value_pl');
        });

        // Add Dutch language support to benefits table
        Schema::table('benefits', function (Blueprint $table) {
            $table->string('title_nl')->nullable()->after('title_pl');
            $table->text('description_nl')->nullable()->after('description_pl');
        });

        // Add Dutch language support to faqs table
        Schema::table('faqs', function (Blueprint $table) {
            $table->string('question_nl')->nullable()->after('question_pl');
            $table->text('answer_nl')->nullable()->after('answer_pl');
        });

        // Add Dutch language support to training_modules table
        Schema::table('training_modules', function (Blueprint $table) {
            $table->string('title_nl')->nullable()->after('title_pl');
            $table->text('description_nl')->nullable()->after('description_pl');
        });

        // Add Dutch language support to section_translations table
        Schema::table('section_translations', function (Blueprint $table) {
            $table->string('locale', 5)->change(); // Make sure it can handle 'nl'
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->dropColumn('value_nl');
        });

        Schema::table('benefits', function (Blueprint $table) {
            $table->dropColumn(['title_nl', 'description_nl']);
        });

        Schema::table('faqs', function (Blueprint $table) {
            $table->dropColumn(['question_nl', 'answer_nl']);
        });

        Schema::table('training_modules', function (Blueprint $table) {
            $table->dropColumn(['title_nl', 'description_nl']);
        });
    }
};
