#!/bin/bash
TSLIB_SRC=$PWD/tslib

TSLIB_INSTALL=$PWD/install-tslib
TSLIB_BUILD=$PWD/build-tslib

#if [ ! -d $TSLIB_INSTALL ]; then
#	mkdir $TSLIB_INSTALL
#fi

#if [ ! -d $TSLIB_BUILD ]; then
#	mkdir $TSLIB_BUILD
#fi

rm -R -f $TSLIB_INSTALL
rm -R -f $TSLIB_BUILD

mkdir $TSLIB_INSTALL
mkdir $TSLIB_BUILD

#tslib
cd $TSLIB_BUILD
$TSLIB_SRC/configure --host=arm-linux --prefix=$TSLIB_INSTALL --enable-static --enable-shared
make -j4
make install
cd ..

