#!/bin/sh
cd /sources
tar xvf iproute2-5.10.0.*
cd /sources/iproute2-5.10.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

sed -i 's/.m_ipt.o//' tc/Makefile

make -j

make DOCDIR=/usr/share/doc/iproute2-5.10.0 install
