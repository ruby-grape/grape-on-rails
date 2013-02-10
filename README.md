Grape on Rails
==============

[![Build Status](https://secure.travis-ci.org/dblock/grape-on-rails.png)](http://travis-ci.org/dblock/grape-on-rails)

A [Grape](http://github.com/intridea/grape) API mounted on Rails.

* API v1: simple GET request as well as Rails trapping exceptions.
* API v2: Basic Auth protected API.

Run
---

```
bundle install
rails s
```

Try http://localhost:3000/api/v1/system/ping or http://localhost:3000/api/v2/protected/ping with username=*username* and password=*password*.

