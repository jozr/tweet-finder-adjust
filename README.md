# Tweet Finder for Adjust
A simple application to find tweets.

## Heroku
You can find this application deployed to [Heroku](https://tweet-finder-adjust.herokuapp.com).

## Local
To run this locally, you will need to add a `CONSUMER_KEY` and `CONSUMER_SECRET` to an `.env` file at the root. These variables can be created by adding an application on Twitter (https://apps.twitter.com/)

To run tests:
```bash
bundle install
bundle exec rspec
```

To run the server:
```bash
bundle install
ruby server.rb
```
