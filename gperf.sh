#!/bin/sh
cd /sources
tar xvf gperf-3.1.*
cd /sources/gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make -j

make install
