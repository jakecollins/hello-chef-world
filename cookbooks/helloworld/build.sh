#!/bin/bash

set -e
set -x

# Install Ruby Gems
rm -f Gemfile.lock
bundle install

# Perform static code analysis. This generates .rubocop_todo.yml, a list of violations to fix.
bundle exec rubocop --auto-gen-config

# Install dependencies
rm -f Berksfile.lock
bundle exec berks install

# Run Chef spec tests
bundle exec rspec

# Run kitchen test mini spec tests (integration tests) in a docker container
set +x
while [ "$1" != "" ]; do
  case $1 in
      -i | --integration-test ) set -x
                                bundle exec kitchen test -d never
                                set +x
                                ;;
  esac
  shift
done
