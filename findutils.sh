#!/bin/sh
cd /sources
tar xvf findutils-4.8.0.*
cd /sources/findutils-4.8.0

./configure --prefix=/usr --localstatedir=/var/lib/locate

make -j

make install

mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb
