---
project: luajit
tagline: LuaJIT binary
---

## Overview

LuaJIT binary.

## Build Notes

Makefile was modified to build with `-msse -msse2` (not enabled by default).

__NOTE__: The default master branch tracks LuaJIT 2.1.
LuaJIT 2.0.x binaries are available in the [2.0 branch].

[2.0 branch]: https://github.com/luapower/luajit/tree/2.0

## MODULE PATHS

### Windows

LUA_CPATH was changed from '!\?.dll' to `!\clib\?.dll` in luaconf.h.
This is done to separate Lua/C modules from other binary dependencies,
which prevents name clashes and allows the luapower script
to distinguish Lua/C modules from other library files.

`!\..\..\?.lua;!\..\..\?\init.lua` was added to package.path. This allows
`require` to find modules relative to the executable directory, regardless
of what the current directory is, making the distribution portable.

The default `package.cpath` was also modified from `!\?.dll` to `!\clib\?.dll`.
This allows distinguishing between Lua/C modules and other dll dependencies.

> Windows looks for dependent dlls in the directory of the executable first,
and that's where all non-module dlls are, so independence from system
libraries is assured by design.

### Linux and OSX

For Linux and OSX, luajit is a shell wrapper script that sets LD_LIBRARY_PATH,
LUA_PATH and LUA_CPATH to acheive the same effect and assure independence
from system libraries.

### Going further

The above solves the problem of finding Lua modules and dependent libraries
relative to the directory of the running script, and independently of the
directory that the script was started in.

To find other files, like media files, etc. relative to the directory of
the running script, use [glue.bin].

To add more paths to package.path and package.cpath at runtime,
use [glue.luapath] and [glue.cpath].


[glue.bin]:     glue.html#bin
[glue.luapath]: glue.html#luapath
[glue.cpath]:   glue.html#cpath

