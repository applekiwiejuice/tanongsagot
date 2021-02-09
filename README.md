# tanongsagot
- something about Q&A or AMA(Ask me Anything), maybe inspired by quora, reddit, curiouscat, formspring...
- exploration / learning ruby on rails using [`rails-starter-pack`](https://github.com/avionschool/rails-starter-pack)


# Template README

## Avion's Rails Starter Pack

#### Version

```
  Ruby 2.7.1
  Rails 6.0.3.4
  Postgres 9.6
  Node.js 10.20.1
  Yarn 1.22.4
```

#### Installation

```
  $ git clone git@github.com:avionschool/rails-starter-pack.git
  $ cd rails-starter-pack
```

#### Configuration

- Copy `config/database.yml.sample` to `config/database.yml`

#### Setup

```
  $ docker-compose run --rm web bundle install
  $ docker-compose run --rm web yarn install
  $ docker-compose run --rm web rails db:create 
  $ docker-compose run --rm web rails webpacker:install
```

#### Starting the application

```
  $ docker-compose up 
```

#### Running the test suite

```
  $ docker-compose run --rm web bundle exec rspec
```
