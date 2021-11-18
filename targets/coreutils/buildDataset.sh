#!/bin/bash

pip3 install wllvm

ROOTDIR=$(pwd)

export LLVM_COMPILER=clang
export FORCE_UNSAFE_CONFIGURE=1

mkdir bitcode_files

echo "Preparing "
wget https://ftp.gnu.org/gnu/coreutils/coreutils-8.32.tar.gz
tar -xf coreutils-8.32.tar.gz
rm coreutils-8.32.tar.gz

cd coreutils-8.32/
CC=wllvm ./configure \
      --disable-nls \
      CFLAGS="-g -O0 -Xclang  -D__NO_STRING_INLINES  -D_FORTIFY_SOURCE=0 -U__OPTIMIZE__ -fno-stack-protector"
make CC=wllvm -j $(nproc)
cd src
find . -executable -type f | xargs -I '{}'  extract-bc '{}'

cd $ROOTDIR

for f in `cat Dataset-1/list.txt`
do
	cp Dataset-1/coreutils-8.32/src/"$f".bc bitcode_files/
done

cd bitcode_files
ls *.bc | xargs -n 1 llc -filetype obj 
ls *.o | xargs -n 1 gcc -O2 -fno-stack-protector '{}' -o '{}'.bin -no-pie

cd $ROOTDIR
