#!/bin/bash
#create local build of sim, configured to generate gamma tests of the standalone NaI_UNL setup
. buildsetup.sh
cp MilliQan.cc.UNL MilliQan.cc
cp src/mqDetectorConstruction.cc.NaIOnly.UNL src/mqDetectorConstruction.cc
cd build
cmake ../
make -j8
./MilliQan
