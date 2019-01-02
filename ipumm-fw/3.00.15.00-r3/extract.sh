#!/bin/bash -e

if [ -d ./ignore ] ; then
	rm -rf ./ignore || true
fi

if [ ! -d ./files ] ; then
	mkdir -p files
fi

mkdir -p ./ignore

cd ./ignore/
ar xv ../ipumm-fw_*_armv7ahf-neon.ipk
tar xf data.tar.gz
cp lib/firmware/dra7-ipu2-fw.xem4.ipumm-fw ../files/dra7-ipu2-fw.xem4
cp lib/firmware/dra7-ipu2-fw.xem4.map ../files/
cd ../
rm -rf ./ignore || true

