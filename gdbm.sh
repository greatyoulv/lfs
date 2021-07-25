#!/bin/sh
cd /sources
tar xvf gdbm-1.19.*
cd /sources/gdbm-1.19

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make -j

make install
