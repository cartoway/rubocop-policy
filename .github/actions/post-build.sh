#!/usr/bin/env bash

gem install ./mapotempo_rubocop-0.0.0.gem
yml=$(gem contents mapotempo_rubocop | grep yml | wc -l)
if [ "$yml" == "0" ]; then
  echo 'This gem is not valid, it has no yml files'
  exit 1
fi
echo "require 'mapotempo_rubocop'" | irb
