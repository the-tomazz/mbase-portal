# PHP2Shell security update (21 October 2026)

Fixes: CVE-2026-109618 and CVE-2026-109619.

Minimum version for `php8.1-cli`, `php8.1-common` and `php8.1-opcache` (Ubuntu 24.04, `ondrej/php`):

```text
8.1.34-9+ubuntu24.04.1+deb.sury.org+1
```

## 1. Build

```bash
docker compose config --quiet && \
docker compose build --pull --no-cache laravel.test
```

## 2. Verify image packages and XLSX extension

```bash
docker run --rm --entrypoint dpkg-query sail-8.1/app \
  -W php8.1-cli php8.1-common php8.1-opcache
docker run --rm --entrypoint php sail-8.1/app --ri xlswriter
```

Required: all three packages at or above the minimum version; `xlswriter support => enabled`. `php -v` does not show the backport package revision.

## 3. Recreate the app container

```bash
docker compose up -d --no-deps --force-recreate laravel.test
```

## 4. Verify the running container

```bash
docker compose exec laravel.test dpkg-query -W php8.1-cli php8.1-common php8.1-opcache
docker compose exec laravel.test php --ri xlswriter
docker compose ps
docker compose logs --tail=100 laravel.test
```

