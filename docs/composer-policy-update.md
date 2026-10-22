# Composer 2.10 Laravel-Lang compatibility update

Both Composer templates allow `laravel-lang/lang` **12.24.2** through malware blocking while retaining audit reporting. All other package versions remain subject to malware blocking. The exception is version-scoped, not commit-scoped; retain the locked reference **`5a6a3e7751a91dec3ee7d69c12db4690643d59a0`**.

Verification baseline: the locked upstream commit archives, with no added `src/helpers.php` or corresponding `autoload.files` entries in `lang`, `attributes` or `http-statuses`.

## 1. Pull and restore the production symlink

```bash
git stash push -m "server configuration before Composer policy update" -- composer.json composer.lock
git pull --ff-only
git stash apply
test "$(readlink composer.json)" = composer-prod.json
git diff -- composer-prod.json composer-dev.json
```

Run each command only if the previous one succeeds. The production symlink must resolve to the updated `composer-prod.json`. No Docker rebuild or restart is required.

## 2. Validate configuration and resolve without installing

```bash
docker compose exec -u sail -e COMPOSER_HOME=/usr/bin \
  laravel.test composer validate --no-check-publish --no-plugins --no-scripts

docker compose exec -u sail -e COMPOSER_HOME=/usr/bin \
  laravel.test composer update mbase2/dtl \
  --dry-run --no-cache --no-scripts --no-plugins --no-interaction
```

The dry run must resolve successfully without replacing Laravel-Lang packages. Malware audit output still reports `laravel-lang/lang` by design; successful dependency resolution does not imply a clean security audit.

## 3. Update the module

```bash
docker compose exec -u sail -e COMPOSER_HOME=/usr/bin \
  laravel.test composer update mbase2/dtl --no-cache --no-interaction

git diff -- composer.lock
```

Retain these Laravel-Lang references:

| Package | Version | Commit |
| --- | --- | --- |
| `laravel-lang/lang` | `12.24.2` | `5a6a3e7751a91dec3ee7d69c12db4690643d59a0` |
| `laravel-lang/attributes` | `2.13.5` | `0f7a0c195cbd4eb000b14dc3fd233dacd23a10f7` |
| `laravel-lang/http-statuses` | `3.10.4` | `97fdb638f95bf9ca8131cc887750d70980aa7be3` |

The CLI commands use `--no-cache` to avoid the existing `utils/2` endpoint's unwritable `/usr/bin/cache` location. They preserve `COMPOSER_HOME=/usr/bin` for compatibility with its existing authentication configuration. The endpoint still prints subprocess failures without checking their exit status; use CLI exit status to verify this update.
