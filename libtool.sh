#!/bin/sh
cd /sources
tar xvf libtool-2.4.6.*
cd /sources/libtool-2.4.6

./configure --prefix=/usr

make -j

make install

rm -fv /usr/lib/libltdl.a
