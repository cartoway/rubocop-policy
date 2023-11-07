#!/usr/bin/env bash

gem install ./rubocop-policy-0.0.0.gem
yml=$(gem contents rubocop-policy | grep yml | wc -l)
if [ "$yml" == "0" ]; then
  echo 'This gem is not valid, it has no yml files'
  exit 1
fi
echo "require 'rubocop-policy'" | irb
