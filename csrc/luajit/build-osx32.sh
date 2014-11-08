MAKE=make P=osx32 CFLAGS="-arch i386" LDFLAGS="-arch i386" \
	X0=luajit X=luajit-bin D0=libluajit.so D=libluajit.dylib A=libluajit.a ./build.sh
