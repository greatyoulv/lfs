#!/bin/sh
cd /sources
tar xvf sysvinit-2.98.*
cd /sources/sysvinit-2.98

patch -Np1 -i ../sysvinit-2.98-consolidated-1.patch

make -j

make install
