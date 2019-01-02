#!/bin/bash -e

if [ -d ./ignore ] ; then
	rm -rf ./ignore || true
fi

if [ ! -d ./files ] ; then
	mkdir -p files
fi

mkdir -p ./ignore

cd ./ignore/
ar xv ../opencl-monitor_*_am57xx_evm.ipk
tar xf data.tar.gz
cp -v lib/firmware/dra7-dsp1-fw.xe66.opencl-monitor ../files/dra7-dsp1-fw.xe66
cp -v lib/firmware/dra7-dsp2-fw.xe66.opencl-monitor ../files/dra7-dsp2-fw.xe66
cp -v usr/share/ti/opencl/dsp_syms.obj ../files/dsp_syms.obj
cp -v usr/share/ti/opencl/dsp.out ../files/dsp.out
cp -v usr/share/ti/opencl/dsp.syms ../files/dsp.syms
cd ../
rm -rf ./ignore || true

