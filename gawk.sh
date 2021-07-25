#!/bin/sh
cd /sources
tar xvf gawk-5.1.0.*
cd /sources/gawk-5.1.0

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make -j

make install
