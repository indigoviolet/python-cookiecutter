#!/bin/zsh

set -ev

direnv allow

hub init

{% if cookiecutter.push_to_github | int %}
hub create
{% endif %}

poetry add -D mypy
