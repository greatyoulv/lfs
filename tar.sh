#!/bin/sh
cd /sources
tar xvf tar-1.34.*
cd /sources/tar-1.34

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin

make -j

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
