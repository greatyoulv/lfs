#!/bin/sh
cd /sources
tar xvf bison-3.7.5.*
cd /sources/bison-3.7.5

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.7.5

make -j

make install
