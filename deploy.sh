#!/usr/bin/env sh

bundle exec middleman build
surge -p build
