# Changelog

All notable changes to this repository are documented in this file.

The format follows Keep a Changelog principles and uses Semantic Versioning.

Historical note: this project had production deployments before formal release versioning was introduced. Version 0.1.0 is the first documented and tagged release in this changelog.

## [Unreleased]

### Changed
- XLSX export runtime moved to the ext-xlswriter PHP extension (Vtiful\\Kernel\\Excel) for faster exports.

## [0.1.0] - 2026-03-28

### Added
- Published Laravel Sail runtime files into docker/ using php artisan sail:publish.
- Added a custom PHP 8.1 Sail runtime Dockerfile at docker/8.1/Dockerfile.

### Changed
- docker-compose.yml build context switched from vendor/laravel/sail/runtimes/8.1 to docker/8.1.
- docker-compose-dev.yml build context switched from vendor/laravel/sail/runtimes/8.1 to docker/8.1.
- PostgreSQL init SQL mount switched from vendor/laravel/sail/database/pgsql/create-testing-database.sql to docker/pgsql/create-testing-database.sql in both compose files.
- Installed php8.1-xlswriter in the published Sail 8.1 Dockerfile.

### Notes
- This makes the xlswriter extension installation persistent across Sail rebuilds.
