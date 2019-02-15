<?php

use Illuminate\Database\Seeder;

class MahasiswasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 50)->create(['type' => 2])->each(function ($u) {
            $u->biodata()->save(factory(App\Mahasiswa::class)->make());
        });
    }
}
