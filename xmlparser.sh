#!/bin/sh
cd /sources
tar xvf XML-Parser-2.46.*
cd /sources/XML-Parser-2.46

perl Makefile.PL

make -j

make install
