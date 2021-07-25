#!/bin/sh
cd /sources
tar xvf pkg-config-0.29.2.*
cd /sources/pkg-config-0.29.2

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make -j

make install
