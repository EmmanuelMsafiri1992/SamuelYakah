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
        Schema::create('care_jobs', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('location');
            $table->string('type'); // full-time, part-time
            $table->string('salary');
            $table->text('description');
            $table->json('requirements')->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('care_jobs');
    }
};
