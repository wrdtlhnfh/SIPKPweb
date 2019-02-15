<?php

use Faker\Generator as Faker;
use App\Tendik;

$factory->define(Tendik::class, function (Faker $faker) {
    $faker->locale = 'id_ID';
    return [
        'nama'=> $faker->unique()->name,
        'nip' => $faker->randomDigitNotNull(18, false),
        'nohp'=> $faker->phoneNumber,
        'jenis_kelamin'=> $faker->randomElement(array_keys(config('reference.jenis_kelamin'))),
        'tempat_lahir'=> $faker->city,
        'tanggal_lahir'=> $faker->dateTimeBetween('-24 years', '-17 years'),
        'alamat'=> $faker->address
    ];
});
