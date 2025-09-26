# Grape on Rails

[![Test](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml)
[![Rubocop](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/ruby-grape/grape-on-rails/actions/workflows/test.yml)

A [Grape](http://github.com/ruby-grape/grape) API mounted on Rails.

- [ping](app/api/acme/ping.rb): a hello world `GET` API
- [post](app/api/acme/post.rb): post JSON data
- [raise](app/api/acme/raise.rb): raise an error, Rails handling exceptions
- [protected](app/api/acme/protected.rb): API protected with rudimentary Basic Authentication
- [headers](app/api/acme/headers.rb): demonstrates header handling

## Run

```
bin/setup
rails s
```

- Try http://localhost:3000/api/ping or http://localhost:3000/api/protected/ping with _username_ and _password_.
- View Swagger docs at http://localhost:3000/swagger.
- Try http://localhost:3000/api/headers to see request headers.

