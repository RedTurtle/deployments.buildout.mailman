
Quickstart
==========

Beta (python 3.5 / mailman 3.1)
-------------------------------

    virtualenv --python=python3.5 .
    bin/pip install --upgrade setuptools
    bin/pip install --upgrade pip
    bin/pip install zc.buildout
    ln -s profiles/beta.cfg buildout.cfg
    ./bin/buildout -Nv

Stable (python 3.4 / mailman 3.0)
---------------------------------

    virtualenv --python=python3.4 .
    bin/pip install --upgrade setuptools
    bin/pip install --upgrade pip
    bin/pip install zc.buildout
    ln -s profiles/stable.cfg buildout.cfg
    ./bin/buildout -Nv

Supervisord
===========


  
