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
      
        Schema::create('clicks', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('news_category_id');
            $table->timestamps();
            $table->foreign('news_category_id')->references('id')->on('categories')->onDelete('cascade');
        });
    }
    

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clicks');
    }
};
