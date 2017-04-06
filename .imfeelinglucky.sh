#!/bin/bash
# we want to exit on errors
set -e

VIRTUALENV_BIN=`which virtualenv-3 || which virtualenv`
PYTHON=`which python3 || which python`
"$VIRTUALENV_BIN" --no-site-packages -p "$PYTHON" .

# Let's enter the virtualenv
bin/pip install --upgrade setuptools
bin/pip install --upgrade pip
bin/pip install zc.buildout

test -e buildout.cfg || ln -s profiles/development.cfg buildout.cfg

./bin/buildout -Nv
