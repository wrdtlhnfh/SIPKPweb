<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        Permission::truncate();
        Permission::create(['name' => 'user_manage']);
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
