#!/bin/sh
cd /sources
tar xvf bc-3.3.0.*
cd /sources/bc-3.3.0

PREFIX=/usr CC=gcc ./configure.sh -G -O3


make -j

make install
