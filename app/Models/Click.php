<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Click extends Model
{
    use HasFactory;
    protected $fillable = ['news_category_id'];

    // The Click model assumes the existence of 'created_at' and 'updated_at' columns

    // Define the relationship with the NewsCategory model
    public function newsCategory()
    {
        return $this->belongsTo(Category::class);
    }
}
