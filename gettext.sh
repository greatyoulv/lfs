#!/bin/sh
cd /sources
tar xvf gettext-0.21.*
cd /sources/gettext-0.21

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21

make -j

make install

chmod -v 0755 /usr/lib/preloadable_libintl.so
