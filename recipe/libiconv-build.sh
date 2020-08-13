#!/bin/sh

./configure --prefix=${PREFIX}  \
            --host=${HOST}      \
            --build=${BUILD}    \
            --enable-static     \
            --disable-rpath

make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

# remove libtool files
find $PREFIX -name '*.la' -delete
