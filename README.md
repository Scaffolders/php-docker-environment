# PHP Starter Project

This is a boilerplate project to work with LAMP (Linux + Apache + MariaDB + PHP). You can easily create a PHP enviroment without have to download and configure the enviroment on your machine. 

## Features

- [X] PHP 8.0
- [X] MariaDB 10.5.8
- [X] PhpMyAdmin
- [X] xDebug 3
- [X] Composer
- [X] PDO
- [ ] PHPUnit

## Configuration ##

1. Set up the environment variables for database and some other services. You only need to create a file called <b>.env</b> on the project root, with the same content on the <b>.env-example</b>, but you can put the values for the environment variables whatever you want.

2. Install the dependencies of the project with composer, with the following command:

```bash
docker-compose exec php-apache-environment composer install
```

You only need to have Docker installed and running on your machine, no other requirement for this be running on your machine. The command to start the enviroment is:

```bash
docker-compose up
```
Or if you do not want to have the terminal locked, you can run the background version of the command with:

```bash
docker-compose up -d
```

When you want to stop it, simple run:

```bash
docker-compose down
```

