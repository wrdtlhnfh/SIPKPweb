<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        Role::truncate();

        $user = Role::create(['name' => 'administrator']);
        $user->givePermissionTo('user_manage');

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
