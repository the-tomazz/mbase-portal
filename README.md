# Zavod za gozdove

## Stack

- Laravel
- Laravel Sail
- Laravel Breeze (blade only)
- Orchid
- Tailwind
- Postgresql

## Deployment

### Get the code

  git clone 

### Install

  composer install

If you don't have the right php version you can add `--ignore-platform-reqs` to the command. You local php isn't relevant, as we'll be using the one in the virtualized env.

### Configuration

  cp .env.example .env

## Build virtual environment from scratch

  sail build --no-cache

Note: [If you really want to properly rebuild SQL] docker rm -v mbase2l_pgsql_1 --force

### Start virtual environment
  
  sail up -d

Note: [You can configure a bash alias for this.](https://laravel.com/docs/9.x/sail#configuring-a-bash-alias)

### Generate application key

To generate the application key (for a new local development env):

  sail artisan key:generate

### Build env

  sail npm install

  sail artisan migrate:refresh --seed

if migrate fails do the following: 

- sail down --rmi all -v (removes persistent volumes)
- sail up
- sail artisan migrate

  sail artisan orchid:admin admin admin@admin.com password
  
  sail npm run dev

### Access site

  http://localhost

## Development

## Build frontend

Keep this running in a seperate terminal:

  npm run dev

## Refresh configuration

  sail artisan optimize

## install Orchid

  sail artisan orchid:install

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
  
## to create a model
##
## Since laravel tables have been moved to laravel scheme, 
## sail artisan code:models --table=tablename will not work!!!

## you will need to 

  sail psql

  SET search_path TO public;
  create table tablename as select * from laravel.tablename;
  \q
  
  sail artisan code:models --table=tablename

  sail psql
  
  SET search_path TO public;
  drop table tablename;
  \q
  
## TLDR Sail

  sail up -d

  sail stop

  sail artisan [command]

  sail composer [command]

  sail yarn/npm/node [command]

## Enter into psql docker
  docker exec -it mbase2l-pgsql-1 psql -U gozdovi -W laravel
  enter gozdovi as pass when prompted
