# Contributing

Both the Vimscript theme and the help text file are generated with a
lightweight, custom templating system, written in Lua. There's a `Makefile`
which generates these. You should be able to just run `make` to re-generate the
two files.

For Nix users, there's also a Flake: `nix build .#yui` does the trick.

If you're only adding or modifying highlight groups and options, you should be
able to stick to `template/yui.lua`, which is where all highlight groups are
defined.
