#!/bin/sh
cd /sources
tar xvf patch-2.7.6.*
cd /sources/patch-2.7.6

./configure --prefix=/usr

make -j

make install
