#!/bin/sh
cd /sources
tar xvf libpipeline-1.5.3.*
cd /sources/libpipeline-1.5.3

./configure --prefix=/usr

make -j

make install
