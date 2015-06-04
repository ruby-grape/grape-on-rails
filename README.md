Grape on Rails
==============

[![Build Status](http://img.shields.io/travis/dblock/grape-on-rails.svg)](https://travis-ci.org/dblock/grape-on-rails)
[![Dependency Status](https://gemnasium.com/dblock/grape-on-rails.svg)](https://gemnasium.com/dblock/grape-on-rails)
[![Code Climate](https://codeclimate.com/github/dblock/grape-on-rails.svg)](https://codeclimate.com/github/dblock/grape-on-rails)

A [Grape](http://github.com/intridea/grape) API mounted on Rails.

* [ping](app/api/acme/ping.rb): a hello world `GET` API
* [post](app/api/acme/post.rb): post JSON data
* [raise](app/api/acme/raise.rb): raise an error, Rails handling exceptions
* [protected](app/api/acme/protected.rb): API protected with rudimentary Basic Authentication

See
---

An instance of this app is running on [grape-on-rails.herokuapp.com](http://grape-on-rails.herokuapp.com).

Run
---

```
bundle install
rails s
```
For Documentation
```
http://localhost:3000/documentation
```
Try http://localhost:3000/api/ping or http://localhost:3000/api/protected/ping with _username_ and _password_.

