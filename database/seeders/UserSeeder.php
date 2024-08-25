<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\MUser;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    public function run()
    {
        MUser::create([
            'nama' => 'Admin',
            'email' => 'admin@example.com',
            'role' => 'Admin',
            'password' => Hash::make('123'),
            'uid' => Str::uuid(),
        ]);
    }
}

