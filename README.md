# What is mbase-portal?
mbase-portal is the central administrative access point for the mbase system (https://portal.mbase.org). It is a Laravel application built with Laravel-Orchid. It works together with Laravel package [mbase-modules](https://gitlab.com/mbase2/mbase-modules/)

## Responsibilities:
- Handles user authentication and authorization
- Provides role and permission management
- Serves as a starting point for UI navigation (menus, dashboard)
- Exposes placeholder views for JavaScript-based modules
- Manages simple Orchid-native UI (e.g., system settings, internal pages)

## Not responsible for:
- Executing domain-specific (module specific) business logic
- Rendering UI for modules (handled fully in JS inside modules)
- Managing routes, controllers, or state of modules (these live in the Laravel package [mbase-modules](https://gitlab.com/mbase2/mbase-modules/))

---

## Stack

- Laravel
- Laravel Sail
- Laravel Breeze (blade only)
- Orchid
- Tailwind
- Postgresql

A seperate project mbase2dtl is included via composer VCS.

## Deployment

## Setup server

Composer:
<https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04>

NPM

```bash
apt install nodejs npm
```

### Get the code

```bash
git clone 
```

### Install

If something goes wrong maybe you have php-xml component missing

```bash
composer install --ignore-platform-reqs
```

### Configuration

```bash
cp .env.example .env
```

### Start virtual environment

```bash
sail up -d
```

Note: [You can configure a bash alias for this.](https://laravel.com/docs/9.x/sail#configuring-a-bash-alias)



### Generate application key

To generate the application key (for a new local development env):

```bash
sail artisan key:generate
```

## Setup mbase2dtl

You may have to `chmod a+x setup_mbase2dtl.sh` before this:

```bash
./setup_mbase2dtl.sh
```

### Build env

```bash
sail npm install
sail psql

  drop schema public cascade;
  drop schema mb2data cascade;
  drop schema mbase2 cascade;
  drop schema mbase2_ge cascade;
  drop schema laravel cascade;

  create schema public;
  create schema mb2data;
  create schema mbase2;
  create schema mbase2_ge;
  create schema laravel;

sail artisan migrate:refresh --seed
```

if migrate fails do the following:

```bash
sail down --rmi all -v (removes persistent volumes)
sail up
sail artisan migrate
```

Build assets, run in it's own terminal

```bash
sail npm run dev
```

### Access site

  <http://localhost>

## Mbase2DTL documentation

Access map here:
<http://localhost/mbase2/map/>

Readme file:
<https://gitlab.com/mbase2/source-code/-/blob/master/README.md>

genetic sample enter form: <http://localhost/mbase2/modules/genetics/samples/sample>

genetic samples index: <http://localhost/mbase2/modules/genetics/samples>

## Development

## Build frontend

Keep this running in a seperate terminal:

  npm run dev

## Refresh configuration

  sail artisan optimize

## install Orchid

  sail artisan orchid:install

## link public storage
 
  sail artisan storage:link

## add user
  
  sail artisan orchid:admin admin admin@admin.com password

## to recreate the database

  sail psql

  drop schema public cascade;
  drop schema mb2data cascade;
  drop schema mbase2 cascade;
  drop schema mbase2_ge cascade;
  drop schema laravel cascade;

  create schema public;
  create schema mb2data;
  create schema mbase2;
  create schema mbase2_ge;
  create schema laravel;
  
# TLDR Sail

  sail up -d

  sail stop

  sail artisan [command]

  sail composer [command]

  sail yarn/npm/node [command]

## Enter into psql docker
  
  docker exec -it mbase2l-pgsql-1 psql -U gozdovi -W laravel
  
enter gozdovi as pass when prompted

## Debugging/Development help

### Build virtual environment from scratch

  sail build --no-cache

Note: [If you really want to properly rebuild SQL] docker rm -v mbase2l_pgsql_1 --force

### How to Setup another login

```bash
sail artisan orchid:admin admin xyz@pqr.com password
```

### How to create a new model

Since laravel tables have been moved to laravel scheme,
sail artisan code:models --table=tablename will not work!!!
you will need to

  sail psql

  SET search_path TO public;
  create table tablename as select * from laravel.tablename;
  \q
  
  sail artisan code:models --table=tablename

  sail psql
  
  SET search_path TO public;
  drop table tablename;
  \q
