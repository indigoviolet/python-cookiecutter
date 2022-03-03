#!/bin/zsh

set -ev

direnv allow

git init

{% if cookiecutter.push_to_github != "no" %}
gh repo create {{cookiecutter.project_name}} -d "{{cookiecutter.description}}" --{{cookiecutter.push_to_github}}
{% endif %}

poetry add -D mypy
