MAKE=make P=linux64 LDFLAGS="-s -static-libgcc" \
	X0=luajit X=luajit-bin D=libluajit.so A=libluajit.a ./build.sh
