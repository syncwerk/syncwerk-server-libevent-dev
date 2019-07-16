#!/bin/bash
set -ex
cd fhs/usr/lib/syncwerk/libevent/
./autogen.sh
./configure --with-pic
make
make install
cd ../../../../../
debuild -us -uc
