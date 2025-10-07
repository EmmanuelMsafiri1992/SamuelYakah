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
        Schema::create('job_positions', function (Blueprint $table) {
            $table->id();
            $table->string('title_en');
            $table->string('title_pl');
            $table->text('description_en');
            $table->text('description_pl');
            $table->string('location_en')->nullable();
            $table->string('location_pl')->nullable();
            $table->string('type')->default('full-time'); // full-time, part-time, contract
            $table->decimal('salary_min', 10, 2)->nullable();
            $table->decimal('salary_max', 10, 2)->nullable();
            $table->text('requirements_en')->nullable();
            $table->text('requirements_pl')->nullable();
            $table->text('responsibilities_en')->nullable();
            $table->text('responsibilities_pl')->nullable();
            $table->integer('order')->default(0);
            $table->boolean('active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('job_positions');
    }
};
