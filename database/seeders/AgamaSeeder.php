<?php

namespace Database\Seeders;

use App\Models\MAgama;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AgamaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $agama = [
            ['nama_agama' => 'Islam'],
            ['nama_agama' => 'Katolik'],
            ['nama_agama' => 'Kristen'],
            ['nama_agama' => 'Hindu'],
            ['nama_agama' => 'Budha'],
            ['nama_agama' => 'Lain-lain'],
        ];
        foreach ($agama as $agama) {
            MAgama::create($agama);
        }
    }
};
