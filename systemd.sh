#!/bin/sh
cd /sources
tar xvf systemd-247.*
cd /sources/systemd-247

patch -Np1 -i ../systemd-247-upstream_fixes-1.patch

ln -sf /bin/true /usr/bin/xsltproc

tar -xf ../systemd-man-pages-247.tar.xz

sed '181,$ d' -i src/resolve/meson.build

sed -i 's/GROUP="render"/GROUP="video"/' rules.d/50-udev-default.rules.in

mkdir -p build
cd       build

LANG=en_US.UTF-8                    \
meson --prefix=/usr                 \
      --sysconfdir=/etc             \
      --localstatedir=/var          \
      -Dblkid=true                  \
      -Dbuildtype=release           \
      -Ddefault-dnssec=no           \
      -Dfirstboot=false             \
      -Dinstall-tests=false         \
      -Dkmod-path=/bin/kmod         \
      -Dldconfig=false              \
      -Dmount-path=/bin/mount       \
      -Drootprefix=                 \
      -Drootlibdir=/lib             \
      -Dsplit-usr=true              \
      -Dsulogin-path=/sbin/sulogin  \
      -Dsysusers=false              \
      -Dumount-path=/bin/umount     \
      -Db_lto=false                 \
      -Drpmmacrosdir=no             \
      -Dhomed=false                 \
      -Duserdb=false                \
      -Dman=true                    \
      -Dmode=release                \
      -Ddocdir=/usr/share/doc/systemd-247 \
      ..


LANG=en_US.UTF-8 ninja

LANG=en_US.UTF-8 ninja install

rm -f /usr/bin/xsltproc

rm -rf /usr/lib/pam.d

systemd-machine-id-setup

systemctl preset-all

systemctl disable systemd-time-wait-sync.service
