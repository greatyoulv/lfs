#!/bin/sh
cd /sources
tar xvf zlib-1.2.11.*
cd /sources/zlib-1.2.11

./configure --prefix=/usr

make -j

make install

mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

rm -fv /usr/lib/libz.a
