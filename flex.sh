#!/bin/sh
cd /sources
tar xvf flex-2.6.4.*
cd /sources/flex-2.6.4

./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static

make -j

make install

ln -sv flex /usr/bin/lex
