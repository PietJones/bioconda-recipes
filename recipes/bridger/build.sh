#!/bin/bash

set -eu -o pipefail
export CPPFLAGS="-I$PREFIX/include"
export CFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"


./configure --prefix=$PREFIX --with-boost=$PREFIX 

sed -i.bak 's/^ALWAYS_BUILT =.*$/ALWAYS_BUILT = src/g' Makefile

make -j4  

make -j4 install

cp Bridger.pl $PREFIX/bin
chmod +x $PREFIX/bin/Bridger.pl
