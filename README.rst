saltfg - SALT Formula Generator
===============================

**saltfg** will help you to have the same directory structure for all your
saltstack formulas It'll create for you all basic files use in fomula 

Installation
------------

First, you have to install dependancies:

.. code:: bash

    pip install jinja2

Next, clone the saltfg repository:

.. code:: bash

    git clone https://github.com/bougie/saltfg

Then add ``saltfg`` directory to your PATH.

How-to
------

Create a formula named ``myformula`` in the current directory:

.. code:: bash

    saltfg myformula

Create a formula named ``anotherone`` in directory ``/tmp``:

.. code:: bash

    saltfg -d /tmp anotherone

