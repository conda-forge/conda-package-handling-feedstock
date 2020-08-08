#!/usr/bin/env bash

export CFLAGS="${CFLAGS} -fPIC"
export CXXFLAGS="${CXXFLAGS} -fPIC"

./configure --prefix=${PREFIX}  \
            --shared

make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

# Remove man files.
rm -rf $PREFIX/share/man
