#!/bin/bash

#define environment
echo "===> creating env"
cp .env.example .env

#build image
echo "===> build image: aldora/accommodations"
docker build --platform linux/amd64 -t aldora/accommodations .

#start containers
echo "===> start containers"
docker-compose up -d

#install dependencies
echo "===> execute 'composer install'"
docker exec -it app sh -c "composer install"

#create a user for mysql
echo "===> create a user for mysql"
docker-compose exec db mysql -uroot -pfJ!zMdRg7IpB3hMjPEgk -e "
SHOW DATABASES;
GRANT ALL ON accommodations.* TO 'santa'@'%' IDENTIFIED BY 'Rg7IpB3hMjPEgk!z';
FLUSH PRIVILEGES;
"


#test
echo "===> php test"
docker exec -it app sh -c "php artisan test tests/Http/"

echo "App is running"
