#!/bin/sh
cd /sources
tar xvf mpfr-4.1.0.*
cd /sources/mpfr-4.1.0

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0

make -j

make install
