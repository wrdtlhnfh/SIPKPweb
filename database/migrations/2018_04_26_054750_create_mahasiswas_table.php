<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMahasiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mahasiswa', function (Blueprint $table) {
            $table->integer('id')->unsigned();
            $table->string('nama');
            $table->string('nim');
            $table->integer('angkatan');
            $table->string('tempat_lahir')->nullable();
            $table->date('tanggal_lahir')->nullable();
            $table->integer('jenis_kelamin')->nullable();
            $table->string('nohp')->nullable();
            $table->integer('jalur_masuk')->nullable();
            $table->integer('status_masuk')->nullable();
            $table->timestamps();

            $table->foreign('id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mahasiswa');
    }
}
