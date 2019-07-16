#!/bin/bash
set -ex
cd fhs/usr/lib/syncwerk/libevent/
./configure --with-pic
make
make install
cd ../../../../../
debuild -us -uc
