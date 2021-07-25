#!/bin/sh
cd /sources
tar xvf texinfo-6.7.*
cd /sources/texinfo-6.7

./configure --prefix=/usr

make -j

make install

make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
