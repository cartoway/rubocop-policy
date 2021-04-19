#!/usr/bin/env bash

export GEM_VERSION=${GITHUB_REF#refs/*/v}
echo "Building gem ${GEM_VERSION}"
gem build mapotempo_rubocop.gemspec

status_code=$(curl  -s -o /dev/null -w "%{http_code}" --data-binary my_gem-${GEM_VERSION}.gem -H "Authorization:${RUBYGEM_API}" 'https://rubygems.org/api/v1/gems')

if [ "${status_code}" != "200" ]; then
  echo "Error delivering the gem to rubygems.org (status ${status_code})."
  exit 1
fi
