#!/bin/bash -e

if [ -d ./ignore ] ; then
	rm -rf ./ignore || true
fi

if [ ! -d ./files ] ; then
	mkdir -p files
fi

mkdir -p ./ignore

cd ./ignore/
ar xv ../opencl-monitor-ipu_*_am57xx_evm.ipk
tar xf data.tar.gz
cp -v lib/firmware/dra7-ipu1-fw.xem4.opencl-monitor ../files/dra7-ipu1-fw.xem4
cd ../
rm -rf ./ignore || true
