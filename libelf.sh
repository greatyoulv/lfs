#!/bin/sh
cd /sources
tar xvf elfutils-0.183.*
cd /sources/elfutils-0.183

./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy \
            --libdir=/lib

make -j

make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /lib/libelf.a
