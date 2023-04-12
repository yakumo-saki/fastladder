#!/bin/bash -eu

# run this after docker-compose up -d db

export DB_NAME=fastladder
export DB_USER=fastladder
export DB_PASSWORD=fastladder
export DB_HOST=127.0.0.1
export SECRET_KEY_BASE=secret_for_debug

export RAILS_ENV=production

bundle exec rake db:migrate
bundle exec rake assets:precompile

foreman start
