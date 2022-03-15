# complience
complience tools is application to help inspectorat catch data 

#reguirements

- PHP >= 7.4.0
- Enable Extension : BCMath, Ctype, JSON, Mbstring, OpenSSL, PDO, Tokenizer, XML
- [Composer](https://getcomposer.org/) Installed

## Instalasi

1. *Goes to Root Project*
2. Inisiasi Awal
    - `composer install`
    - `cp .env.example .env`
    - `php artisan key:generate`
    - `php artisan route:list`
    - `composer dump-autoload`
3. Refresh Config File
    - `php artisan config:cache`
    - `php artisan config:clear`
4. Config web server, akses public di arahkan ke folder public laravel
5. Jalankan command `php artisan optimize:clear` biar semakin mantap gan
6. tambahkan requirement api di file `.env`
    - URL_GET_PRODUCT_MICROSITE
    - SECRET_KEY_MICROSITE



