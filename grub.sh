#!/bin/sh
cd /sources
tar xvf grub-2.04.*
cd /sources/grub-2.04

sed "s/gold-version/& -R .note.gnu.property/" \
    -i Makefile.in grub-core/Makefile.in

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror


make -j

make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
