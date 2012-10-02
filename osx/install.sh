#!/bin/bash

# Fat Universal Mac OSX
#export CFLAGS="-force_cpusubtype_ALL -arch i386 -arch x86_64 -DDARWIN10"

DIR="$(cd .. && pwd)"
cd $DIR
git submodule init
git submodule update

cd $DIR
cd libs/libffi
mkdir built
./configure --exec-prefix=$DIR/libs/libffi/built --prefix=$DIR/libs/libffi/built
make install

