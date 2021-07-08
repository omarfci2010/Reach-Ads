# Reach Ads
assign ads to advertisers and send email at 8:00 PM

# Steps to run project
-clone project
-composer install
-import reach-app.sql to your database OR run php artisan migrate 
-run this seeder command php artisan db:seed --class=\\Kwreach\\Ads\\database\\seeders\\AdvertiserSeeder
-upload postman collection to your postman app
-finish step run => php artisan serve
