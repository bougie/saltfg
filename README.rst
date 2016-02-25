saltfg - SALT Formula Generator
===============================

**saltfg** will help you to have the same directory structure for all your
saltstack formulas It'll create for you all basic files use in fomula 

Installation
------------

```
git clone https://github.com/bougie/saltfg .
```

Then add ``saltfg`` directory to your PATH.

How-to
------

Create a formula named ``myformula`` in the current directory:

```
saltfg myformula
```

Create a formula named ``anotherone`` in directory ``/tmp``:

```
saltfg -d /tmp anotherone
```

