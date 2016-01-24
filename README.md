# soccerStadiumReservation
This application is builded with php programing language and phalcon framework using mysql database .

Before running this application please make sure phalcon extension on you machine . 
You can visit this link to installing -> https://phalconphp.com/en/download

Editing your project folder:

1. make cache directory can be writen 
	- mkdir /app/cache/
	- chmod -R 777 cache/

2. create config file edit config.php 
	- cp config/config-sample.php config/config.php

3. Dump database
	- mysqldump -u{your mysql password} {your database} < docs/stadium.sql -p 