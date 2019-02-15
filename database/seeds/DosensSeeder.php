<?php

use Illuminate\Database\Seeder;

class DosensSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 10)->create(['type' => 1])->each(function ($u) {
            $u->biodata()->save(factory(App\Dosen::class)->make());
        });
    }
}
