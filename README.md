# Zavod za gozdove

## Stack

- Laravel
- Laravel Sail
- Laravel Breeze (blade only)
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

  sail artisan migrate

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
  
  sail artisan orchid:admin admin admin@mbase2l.zgs.si password

## TLDR Sail

  sail up -d

  sail stop

  sail artisan [command]

  sail composer [command]

  sail yarn/npm/node [command]
