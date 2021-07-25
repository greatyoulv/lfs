#!/bin/sh
cd /sources
tar xvf autoconf-2.71.*
cd /sources/autoconf-2.71


./configure --prefix=/usr

make -j

make install
