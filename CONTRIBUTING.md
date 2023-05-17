# Contributing

## Architecture

All the output files (Vim/Neovim colors, docs...) are generated with a
lightweight, custom templating system written in Lua.

In the `template/` directory, you'll find data structures, that have a `to_vim`
method and an optional `docs` method. Those data structures represent either
lower level Vim script constructs such as conditionals, or more high level
concepts such as a theme option or the lightline snippet.

Each data structure should encapsulate all the information and functionality
it needs to do its job.

## Build

Use the Makefile. For Nix users, there's also a Flake: `nix build .#yui`
does the trick.

If you're only adding or modifying highlight groups and options, you should
be able to stick to `template/yui.lua`, which is where all highlight groups
are defined.
