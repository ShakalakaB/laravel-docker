# Laravel-docker
Dockerize a laravel application with one-line code

----

Just one-line code: `$sudo ./setup-docker.sh`, you can execute the Laravel application in LNMP(Linux, Nginx, Mysql, PHP) environment.

* The tutorial works for **Mac M1**

**Prerequisites**
+ [Docker](https://docs.docker.com/desktop/) installed

### Quick Start
1. Clone [the repository](https://github.com/ShakalakaB/laravel-docker.git): `$ git clone https://github.com/ShakalakaB/laravel-docker.git`
2. Enter the directory root you just cloned: `$ cd laravel-docker`
3. Execute the file *setup-docker.sh* as admin: `$ sudo ./setup-docker.sh`. If it executes successfully, you will the following msg in terminal: `$ App is running`.
4. Now, open browser and go to **localhost:8000**, you will see Laravel homepage.
* Shut down all the containers started above, execute `sudo docker-compose down` in the same directory root


*Thanks to the project: [docker-compose-laravel-alpine-for-mac-m1](https://github.com/vgocoder/docker-compose-laravel-alpine-for-mac-m1), I built the project based on it.*


