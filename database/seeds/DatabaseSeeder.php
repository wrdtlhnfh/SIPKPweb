<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(PermissionsSeeder::class);
        $this->call(RolesSeeder::class);
        $this->call(UsersTableSeeder::class);      
        $this->call(DosensSeeder::class);
        $this->call(TendiksSeeder::class);
        $this->call(MahasiswasSeeder::class);
    }
}
