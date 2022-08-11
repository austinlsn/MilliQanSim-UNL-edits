#!/bin/bash
#create local build of sim, configured to generate gamma tests of the standalone NaI setup
. buildsetup.sh
cp MilliQan.cc.default MilliQan.cc
cp src/mqDetectorConstruction.cc.NaIOnly src/mqDetectorConstruction.cc
cd build
cmake ../
make -j8
./MilliQan ../runMac/sidegamma_no_vis.mac
