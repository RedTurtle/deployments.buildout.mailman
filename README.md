
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

Supervisor requires Python 2.4 or later but does not work on any version of Python 3.

   [supervisor]
   recipe = collective.recipe.supervisor
   programs =
       10 mailman ${buildout:directory}/bin/pidproxy [ ${buildout:directory}/var/mailman/mailman.pid ${buildout:directory}/bin/mailman start ]

  
