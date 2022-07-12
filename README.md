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

### Configuration

   cp .env.example .env

To generate the application key (for a new local development env):

   php artisan key:generate

### Install

   composer install

### Start virtual enviroment

   vendor/laravel/sail/bin/sail up -d

Note: [You can configure a bash alias for this.](https://laravel.com/docs/9.x/sail#configuring-a-bash-alias)

### Build env

   sail npm install
   sail npm run dev
   sail artisan migrate

### Access site

    http://localhost:3001

## Development

## Build frontend

   npm run dev

### TLDR Sail

   sail up -d
   sail stop
   sail artisan [command]
   sail composer [command]
   sail yarn/npm/node [command]

## Refresh configuration

   sail artisan optimize
