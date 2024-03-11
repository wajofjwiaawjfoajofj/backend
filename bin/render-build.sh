#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:compile
bundle exec rails assets:clean
bundle exec rails db:migrate