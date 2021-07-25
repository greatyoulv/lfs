#!/bin/sh
cd /sources
tar xvf make-4.3.*
cd /sources/make-4.3

./configure --prefix=/usr

make -j

make install
