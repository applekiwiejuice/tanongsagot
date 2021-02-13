# tanongsagot
- something about Q&A or AMA(Ask me Anything), maybe inspired by quora, reddit, curiouscat, formspring...
- exploration / learning ruby on rails using [`rails-starter-pack`](https://github.com/avionschool/rails-starter-pack)
- following Ruby on Rails Tutorial by Michael Hartl

## Dev Logs
### Week from February 7-13
- Worked on users model, validations and authentication
- Setup react with webpacker and add compatible tailwind 
- TODO: work on creating a signup form


## Configuration
#### Version

```
  Ruby 2.7.2
  Rails 6.0.3.4
  Postgres 10.4
  Node.js 14.15.4
  Yarn 1.22.4
```

#### Setup
```
  $ docker-compose run --rm web bundle install
  $ docker-compose run --rm web yarn install
  $ docker-compose run --rm web rails db:create 
  $ docker-compose run --rm web rails webpacker:install
```

#### Building the application on docker
```
  $ docker-compose build
```

#### Starting the application

```
  $ docker-compose up 
```

#### Running the test suite

```
  $ docker-compose run --rm web bundle exec rspec
```
