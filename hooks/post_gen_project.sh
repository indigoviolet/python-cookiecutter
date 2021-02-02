#!/bin/zsh

set -ev

direnv allow

poetry add -D mypy
