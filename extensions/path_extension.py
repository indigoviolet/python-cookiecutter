# after https://github.com/Midnighter/jinja2-ospath/blob/master/jinja2_ospath/extensions.py
#
#
from pathlib import Path

from jinja2.ext import Extension


class PathExtension(Extension):
    def __init__(self, environment):
        super().__init__(environment)
        environment.filters["path_resolve"] = lambda x: str(Path(x).resolve())
