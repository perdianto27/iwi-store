<p align="center" ><img height="400px" src="https://github.com/perdianto27/iwi-store/blob/master/public/images/home.jpg"> </p>
<br>

# Tech :
- PHP 7
- Laravel 7 
- Mysql

# Cara Menjalankan
- Clone project atau download
- copy dan rename file .env.example menjadi .env
- Jalankan perintah : <br>
“composer install”<br>
- Import dan Setting database
- jika muncul error seperti ini, <br>
"No application encryption key has been specified." <br>
Berarti key laravel anda salah untuk, memperbaikinya tinggal di
"php artisan key:generate"
- Silahkan jalankan projectnya <br>
"php artisan serve"

Note:
Jika terjadi error lain, jalankan perintah ini<br>
“composer dumpautoload”<br>
“composer update –no-scripts” <br>