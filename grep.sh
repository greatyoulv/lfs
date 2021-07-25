#!/bin/sh
cd /sources
tar xvf grep-3.6.*
cd /sources/grep-3.6

./configure --prefix=/usr --bindir=/bin

make -j

make install
