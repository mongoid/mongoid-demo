# Mongoid Sinatra Minimal Demo

This is a minimal application showing how to get started with Mongoid.
It uses Sinatra, demonstrating the use of Mongoid without Rails.
It returns data in JSON format as would be done in a contemporary backend
application.

This application has been developed following the
[Mongoid getting started guide with Sinatra](https://docs.mongodb.com/mongoid/master/tutorials/getting-started-sinatra/).

## Configure

Copy `config/mongoid.yml.sample.atlas` or `config/mongoid.yml.sample.local`
to `config/mongoid.yml` and adjust the settings within as needed.

## Run

To run the application:

    bundle exec ruby app.rb
