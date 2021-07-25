#!/bin/sh
cd /sources
tar xvf psmisc-23.4.*
cd /sources/psmisc-23.4

./configure --prefix=/usr

make -j

make install

mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin
