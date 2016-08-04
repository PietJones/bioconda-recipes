#!/bin/bash

set -eu -o pipefail
#export CPPFLAGS="-I$PREFIX/include"
#export CFLAGS="-I$PREFIX/include"
#export LDFLAGS="-L$PREFIX/lib"


#./configure --prefix=$PREFIX --with-bam_inc=$PREFIX/include/bam --with-bam_lib=$PREFIX/lib


cd src
sed -i s/enable-auto-import/-enable-auto-import/g Makefile
make -j4  

cp FastOrtho $PREFIX/bin
chmod +x $PREFIX/bin/FastOrtho


