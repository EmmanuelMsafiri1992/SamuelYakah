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
        Schema::create('job_applications', function (Blueprint $table) {
            $table->id();
            $table->foreignId('care_job_id')->constrained('care_jobs')->onDelete('cascade');
            $table->string('job_title');
            $table->string('full_name');
            $table->string('email');
            $table->string('phone');
            $table->string('experience');
            $table->text('cover_letter');
            $table->string('cv_file')->nullable();
            $table->string('status')->default('pending'); // pending, reviewed, shortlisted, rejected
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('job_applications');
    }
};
