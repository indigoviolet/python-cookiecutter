#!/bin/zsh

set -ev

direnv allow

git init

{% if cookiecutter.push_to_github != "no" %}
gh repo create {{cookiecutter.project_name}} -d "{{cookiecutter.description}}" --{{cookiecutter.push_to_github}} --source=. --remote=upstream --disable-wiki --push
{% endif %}

poetry add -D mypy
