# Grape on Rails

[![Test](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml)
[![Rubocop](https://github.com/ruby-grape/grape-on-rails/actions/workflows/rubocop.yml/badge.svg?branch=master)](https://github.com/ruby-grape/grape-on-rails/actions/workflows/rubocop.yml)
[![Coverage Status](https://coveralls.io/repos/github/ruby-grape/grape-on-rails/badge.svg?branch=master)](https://coveralls.io/github/ruby-grape/grape-on-rails?branch=master)

A [Grape](https://github.com/ruby-grape/grape) API mounted on Rails.

- [ping](app/api/acme/ping.rb): a hello world `GET` API
- [post](app/api/acme/post.rb): post JSON data
- [raise](app/api/acme/raise.rb): raise an error, Rails handling exceptions
- [protected](app/api/acme/protected.rb): API protected with rudimentary Basic Authentication
- [headers](app/api/acme/headers.rb): demonstrates header handling

## Tests

GitHub Actions tests the latest Rails 6.1 and 7.x releases on Ruby 3.3, Rails 8.0 and 8.1 on Ruby 3.4, and Rails 8.1 on Ruby 4.0. Appraisal manifests resolve each Rails line independently of the application lockfile; Rails 6.1 and 7.x retain their compatible Grape 2.4 integration. After changing `Appraisals`, regenerate manifests with `bundle exec appraisal generate` and apply the repository's formatting with `bundle exec rubocop -a gemfiles`.

With PostgreSQL running, use `RAILS_ENV=test bundle exec rake db:create spec`. To exercise a specific Rails line, install its bundle and run the same command with `BUNDLE_GEMFILE=gemfiles/rails_8_0.gemfile`. This API-only example has no model tables to migrate. CI uses a health-checked PostgreSQL service and runs the browser examples with Firefox and Xvfb. Rails versions before 8.1 use JSON 2.x because their encoders pass the `quirks_mode` option removed in JSON 3; Rails 8.1 exercises the current JSON release.

SimpleCov starts before Rails loads. CI uploads `coverage/lcov.info` from each matrix job to Coveralls and finishes the parallel coverage build after all jobs pass.

Browser examples require Firefox; use `MOZ_HEADLESS=1 RAILS_ENV=test bundle exec rake spec` to run them without a display. Run `bundle exec rubocop` for lint.

## Run

Use Ruby 3.4 or 4.0 with the default Rails 8.1 bundle. Install PostgreSQL and configure [`config/database.yml`](config/database.yml), or set `DATABASE_URL`, before running setup.

```
bin/setup
bin/rails server
```

- Try http://localhost:3000/api/ping or http://localhost:3000/api/protected/ping with _username_ and _password_.
- View Swagger docs at http://localhost:3000/swagger.
- Try http://localhost:3000/api/headers to see request headers.
