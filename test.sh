#!/bin/sh

set -ex

cat README.md | pandoc -t html5
