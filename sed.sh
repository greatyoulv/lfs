#!/bin/sh
cd /sources
tar xvf sed-4.8.*
cd /sources/sed-4.8

./configure --prefix=/usr --bindir=/bin

make -j

make install
