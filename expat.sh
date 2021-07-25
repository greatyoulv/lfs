#!/bin/sh
cd /sources
tar xvf expat-2.2.10.*
cd /sources/expat-2.2.10

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.2.10

make -j

make install
ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib
