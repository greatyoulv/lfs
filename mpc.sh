#!/bin/sh
cd /sources
tar xvf mpc-1.2.1.*
cd /sources/mpc-1.2.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.2.1

make -j

make install
