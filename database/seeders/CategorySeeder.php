<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $now = Carbon::now();
        DB::table('categories')->insert([
            ['name' => 'أخبار', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'رياضة', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'ثقافة', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'فيديو وصور', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'اقتصاد', 'created_at' => $now, 'updated_at' => $now],
        ]);
    }
}
