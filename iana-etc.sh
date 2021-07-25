#!/bin/sh
cd /sources
tar xvf iana-etc-20210202.*
cd /sources/iana-etc-20210202
cp services protocols /etc
