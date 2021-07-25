#!/bin/sh
cd /sources
tar xvf gzip-1.10.*
cd /sources/gzip-1.10

./configure --prefix=/usr

make -j

make install

mv -v /usr/bin/gzip /bin
