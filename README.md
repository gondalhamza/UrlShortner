# Url Shortner

> Apis for creating a coompressed version of a url.

## Installation

### Clone

- Clone this repo to your local machine using `git@github.com:gondalhamza/UrlShortner.git`

### Setup

- Follow the steps to setup project on local your machine

> Create gemset and install bundler
> Ruby 2.7+
```shell
$ gem install bundler
$ bundle install
```

> Install yarn packages

```shell
$ yarn install
```

> Setup your database

```shell

> RAILS_ENV=production rails db:create
> RAILS_ENV=production rails db:migrate
> RAILS_ENV=production rails s
  For console
> RAILS_ENV=production rails c
```
<b>For Cache Project must be run in production env.</b>

> Run server at localhost

```shell
$ rails s
```
---

## Deployment
- This application is deployed to Heroku at `https://url-shortner-tool.herokuapp.com/` [Here](https://url-shortner-tool.herokuapp.com/)


## Usage
<b>API</b>
- 1- Compress URL
- a - URL: https://url-shortner-tool.herokuapp.com/compress_url
- b- Method : POST
- c- Body Parameter: It take array of URL
e.g
{"url": ["www.twitter.com", "www.facebook.com"]}
- d- It return array of short urls

---
## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)
MIT License

Copyright (c) 2021 Hamza Zubair

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.