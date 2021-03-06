#!/bin/sh
cd /sources
tar xvf eudev-3.2.10.*
cd /sources/eudev-3.2.10

./configure --prefix=/usr           \
            --bindir=/sbin          \
            --sbindir=/sbin         \
            --libdir=/usr/lib       \
            --sysconfdir=/etc       \
            --libexecdir=/lib       \
            --with-rootprefix=      \
            --with-rootlibdir=/lib  \
            --enable-manpages       \
            --disable-static

make -j

mkdir -pv /lib/udev/rules.d
mkdir -pv /etc/udev/rules.d

make install


tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install

udevadm hwdb --update
