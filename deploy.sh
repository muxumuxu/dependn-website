#!/usr/bin/env sh

bundle exec middleman build
surge -d https://dependn.com -p build
