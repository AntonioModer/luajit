[ -d src ] || git clone http://luajit.org/git/luajit-2.0.git src
(cd src && git checkout -f master)
(cd src/src && patch < ../../luaconf.h.patch)
