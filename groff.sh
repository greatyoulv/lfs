#!/bin/sh
cd /sources
tar xvf groff-1.22.4.*
cd /sources/groff-1.22.4

PAGE=A4 ./configure --prefix=/usr

make -j

make install
