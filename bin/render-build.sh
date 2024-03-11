#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile RAILS_ENV=production
bundle exec rails assets:clean
bundle exec rails db:migrate