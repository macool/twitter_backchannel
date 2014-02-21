#!/bin/bash
# git version:
git pull
bundle install
rake db:migrate RAILS_ENV=production
rake assets:precompile RAILS_ENV=production
touch tmp/restart.txt
