#!/bin/sh

set -ex

cat README.md | docker-compose run main pandoc -t html5
