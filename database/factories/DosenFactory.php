<?php

use Faker\Generator as Faker;
use App\Dosen;

$factory->define(Dosen::class, function (Faker $faker) {
    $faker->locale = 'id_ID';
    return [
        'nama' => $faker->name,
        'nip' => $faker->randomDigitNotNull(18, false),
        'nidn' => $faker->randomDigitNotNull(8, false),
        'gelar_depan' => '',
        'gelar_belakang' => '',
        'nohp' => $faker->phoneNumber,
        'tempat_lahir' => $faker->city,
        'tanggal_lahir' => $faker->dateTimeBetween('-60 years', '-30 years'),
        'jenis_kelamin' => $faker->randomElement(array_keys(config('reference.jenis_kelamin'))),
    ];
});
