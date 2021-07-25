#!/bin/sh
cd /sources
tar xvf zstd-1.4.8.*
cd /sources/zstd-1.4.8

make -j

make prefix=/usr install

rm -v /usr/lib/libzstd.a
mv -v /usr/lib/libzstd.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libzstd.so) /usr/lib/libzstd.so
