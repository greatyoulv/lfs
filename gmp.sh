#!/bin/sh
cd /sources
tar xvf gmp-6.2.1.*
cd /sources/gmp-6.2.1

cp -v configfsf.guess config.guess
cp -v configfsf.sub   config.sub

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.2.1

make -j

awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

make install
