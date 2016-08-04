#!/bin/bash

set -eu -o pipefail
#export CPPFLAGS="-I$PREFIX/include"
#export CFLAGS="-I$PREFIX/include"
#export LDFLAGS="-L$PREFIX/lib"


./configure --prefix=$PREFIX --with-bam_inc=$PREFIX/include/bam --with-bam_lib=$PREFIX/lib


make -j4  

make -j4 install

