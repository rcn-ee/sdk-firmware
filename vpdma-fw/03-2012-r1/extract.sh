#!/bin/bash -e

if [ -d ./ignore ] ; then
	rm -rf ./ignore || true
fi

if [ ! -d ./files ] ; then
	mkdir -p files
fi

mkdir -p ./ignore

cd ./ignore/
ar xv ../vpdma-fw_03-2012-r1_am57xx_evm.ipk
tar xf data.tar.gz
cp lib/firmware/vpdma-1b8.bin ../files/
cd ../
rm -rf ./ignore || true

