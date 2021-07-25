#!/bin/sh
cd /sources
tar xvf less-563.*
cd /sources/less-563

./configure --prefix=/usr --sysconfdir=/etc

make -j

make install
