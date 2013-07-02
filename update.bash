#!/bin/bash
# git version:
git pull
# svn version:
svn update
bundle install
rake db:migrate RAILS_ENV=production
rake assets:precompile
service apache2 reload