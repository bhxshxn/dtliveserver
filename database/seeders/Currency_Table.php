<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Currency;

class Currency_Table extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Currency::insert([
            'name' => "dollar",
            'code' => "$",
            'symbol' => 0,
            'status' => '1'
        ]);
    }
}
