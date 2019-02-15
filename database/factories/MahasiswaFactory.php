<?php

use Faker\Generator as Faker;
use App\Mahasiswa;

$factory->define(Mahasiswa::class, function (Faker $faker) {
    $faker->locale = 'id_ID';
    return [
        'nama' => $faker->name,
        'nim' => $faker->randomDigitNotNull(10, false),
        'angkatan' => $faker->numberBetween(2010, 2018),
        'tempat_lahir' => $faker->city,
        'tanggal_lahir' => $faker->dateTimeBetween('-24 years', '-17 years'),
        'nohp' => $faker->phoneNumber,
        'jalur_masuk' => $faker->randomElement(array_keys(config('reference.jalur_masuk'))),
        'status_masuk' => $faker->randomElement(array_keys(config('reference.status_masuk')))
    ];
});
