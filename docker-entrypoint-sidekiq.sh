#!/bin/sh

# Immediately exit if there is an error (fail fast).
set -e

# Remove any potential preexisting server process id files.
rm -f tmp/pids/server.pid

# Launch the sidekiq server!
bundle exec sidekiq
