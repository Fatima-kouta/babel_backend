<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Click;
use Carbon\Carbon;

class ClickController extends Controller
{
    public function saveclicks(Request $request)
    {
       
        $request->validate([
            'id' => 'required|exists:categories,id', // Validate that the category_id exists in the categories table
        ]);

        // Create a new post
        $click = Click::create([
            'news_category_id' => $request->input('id'),
        ]);

        return response()->json(['message' => 'Click created successfully', 'click' => $click], 201);
    }
    public function totalclickcount()
    {
            $totalCount = Click::count();
            return  $totalCount;

    }
    public function clicksForCategoriesLast24Hours()
    {
        return $this->getClicksForLastTimePeriod(Carbon::now()->subDay());
    }
    
    public function clicksForCategoriesLastWeek()
    {
        return $this->getClicksForLastTimePeriod(Carbon::now()->subWeek());
    }

    public function clicksForCategoriesLastMonth()
    {
        return $this->getClicksForLastTimePeriod(Carbon::now()->subMonth());
    }
    
    public function clicksForCategoriesLastYear()
    {
        return $this->getClicksForLastTimePeriod(Carbon::now()->subYear());
    }
    
    protected function getClicksForLastTimePeriod($startTime)
    {
        $clicksByCategory = Click::where('created_at', '>=', $startTime)
            ->with('newsCategory') // Load the associated news category
            ->get()
            ->groupBy('news_category_id'); // Group by category ID
        $result = $clicksByCategory->map(function ($clicks, $categoryId) {
        // Retrieve the category name using the first click in the group
        //  $categoryName = $clicks->first()->newsCategory->name;
        $categoryName = $clicks->first()->newsCategory;
        return [
            'category' => $categoryName,
            'clicks' => sizeof( $clicks),
        ];
    });
        

    return response()->json($result->values()->toArray());
    }
    
}
