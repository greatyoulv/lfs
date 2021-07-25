#!/bin/sh
cd /sources
tar xvf automake-1.16.3.*
cd /sources/automake-1.16.3

sed -i "s/''/etags/" t/tags-lisp-space.sh

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.3

make -j

make install
