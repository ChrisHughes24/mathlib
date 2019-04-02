# mathlib

[![Build Status](https://travis-ci.org/leanprover-community/mathlib.svg?branch=master)](https://travis-ci.org/leanprover-community/mathlib)

[![Mergify Status][mergify-status]][mergify]

[mergify]: https://mergify.io
[mergify-status]: https://gh.mergify.io/badges/ChrisHughes24/mathlib.png?style=cut


### Install the `update-mathlib` script

*Linux/OS X/Cygwin/MSYS2/git bash*: run the following command in a terminal:

``` shell
curl https://raw.githubusercontent.com/leanprover-community/mathlib/master/scripts/remote-install-update-mathlib.sh -sSf | sh
```

*Any platform*: in the release section of this page, download
`mathlib-scripts-###-###-###.tar.gz`, expand it and run `setup-dev-scripts.sh`.

### Fetch mathlib binaries

In a terminal, in the directory of a project depending on mathlib, run
the following:

``` shell
update-mathlib
```

The existing `_target/deps/mathlib` will be rewritten with a compiled
version of mathlib.

### Automatic update of the binaries

The following command, run on each project, sets up an automatic
update of the mathlib binaries after every `git checkout`.

``` shell
echo \#! /bin/sh > .git/hooks/post-checkout
echo update-mathlib >> .git/hooks/post-checkout
chmod +x .git/hooks/post-checkout
```

## Maintainers (topics):

* Jeremy Avigad (@avigad): analysis
* Reid Barton (@rwbarton): category theory, topology
* Mario Carneiro (@digama0): all (lead maintainer)
* Simon Hudon (@cipher1024): all
* Chris Hughes (@ChrisHughes24): group_theory, ring_theory, field_theory
* Robert Y. Lewis (@robertylewis): all
* Patrick Massot (@patrickmassot): documentation
