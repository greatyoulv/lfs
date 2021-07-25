#!/bin/sh
cd /sources
tar xvf file-5.39.*
cd /sources/file-5.39

./configure --prefix=/usr

make -j

make install
