#!/bin/sh
cd /sources
tar xvf Python-3.9.2.*
cd /sources/Python-3.9.2

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes

make -j

make install
