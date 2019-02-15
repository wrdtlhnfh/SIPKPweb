<?php

use Illuminate\Database\Seeder;

class TendiksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 50)->create(['type' => 3])->each(function ($u) {
            $u->biodata()->save(factory(App\Tendik::class)->make());
        });
    }
}
