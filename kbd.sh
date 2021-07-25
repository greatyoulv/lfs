#!/bin/sh
cd /sources
tar xvf kbd-2.4.0.*
cd /sources/kbd-2.4.0


patch -Np1 -i ../kbd-2.4.0-backspace-1.patch

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in


./configure --prefix=/usr --disable-vlock

make -j

make install
