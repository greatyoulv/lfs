#!/bin/sh
cd /sources
tar xvf diffutils-3.7.*
cd /sources/diffutils-3.7


./configure --prefix=/usr

make -j

make install
