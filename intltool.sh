#!/bin/sh
cd /sources
tar xvf intltool-0.51.0.*
cd /sources/intltool-0.51.0

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr

make -j

make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO
