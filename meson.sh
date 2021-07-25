#!/bin/sh
cd /sources
tar xvf meson-0.57.1.*
cd /sources/meson-0.57.1

python3 setup.py build

python3 setup.py install --root=dest
cp -rv dest/* /
