#!/bin/sh
cd /sources
tar xvf libffi-3.3.*
cd /sources/libffi-3.3

./configure --prefix=/usr --disable-static --with-gcc-arch=native

make -j

make install
