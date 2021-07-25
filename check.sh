#!/bin/sh
cd /sources
tar xvf check-0.15.2.*
cd /sources/check-0.15.2

./configure --prefix=/usr --disable-static

make -j

make docdir=/usr/share/doc/check-0.15.2 install
