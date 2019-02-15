# Preparation

Sebelum melakukan instalasi, pastikan composer telah terinstall.

1. Download source code dalam bentuk zip atau menggunakan git

   `git clone https://github.com/husnilk/remunerasiv4.git`

2. Install php package dengan perintah

   `composer install`

3. copy file `env.example` dan ubah namanya menjadi `.env`. Konfigurasi file `.env` tersebut terutama untuk database

4. Buat key untuk aplikasi melalui peintah

   `php artisan key:generate`

5. Jalankan perintah migrate untuk membuat databasenya

   `php artisan migrate --seed`
