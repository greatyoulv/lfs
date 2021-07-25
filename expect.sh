#!/bin/sh
cd /sources
tar xvf expect5.45.4.*
cd /sources/expect5.45.4


./configure --prefix=/usr           \
            --with-tcl=/usr/lib     \
            --enable-shared         \
            --mandir=/usr/share/man \
            --with-tclinclude=/usr/include

make -j

make install
ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib
