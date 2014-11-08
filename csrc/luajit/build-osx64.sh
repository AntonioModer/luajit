MAKE=make P=osx64 CFLAGS="-arch x86_64" LDFLAGS="-arch x86_64" \
	X0=luajit X=luajit-bin D0=libluajit.so D=libluajit.dylib A=libluajit.a ./build.sh
