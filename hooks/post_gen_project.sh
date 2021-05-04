#!/bin/zsh

set -ev

direnv allow

git init

{% if cookiecutter.push_to_github == "yes" %}
gh repo create {{cookiecutter.project_name}} -d "{{cookiecutter.description}}"
{% endif %}

poetry add -D mypy
