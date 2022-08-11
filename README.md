# MilliQanSim-UNL-edits
edits made / extra files I added to the MilliQanSim Geant4 repository. Additions are specific to the NaI+PMT from the UNL HEP lab, Summer 2022.

When I mention "stage", I am referring to the files which are directly called and active whenever the simulation is run. Specifically, _MilliQan.cc, src/mqDetectorConstruction.cc, src/mqShieldingPhysics.cc_, etc. These are the files which are called, and every file ending with _.cc.'something'_ is some variation which must first be copied over to its respective stage file before running the Sim.

--------

gammaSetupUNL.sh - script to copy all the UNL files to the stage, and run MilliQan with the newly updated stage.

MilliQan.cc.UNL - Alteration of MilliQan.cc (now called MilliQan.cc.default) to allow for automatic opening of Qt5 visualization. I do not recommend using this when you are actually simulating large amounts of data, since I gutted the original code rather haphazardly.

runMac/Cs137_UNL.mac - (previously named gammaCs_UNL.mac) macro script that generates gammas at 662 keV and betas at 512 keV, each with gaussian spreads, and each 50% of the time. Just change "/run/beamOn #" to whatever number of events you want, before running. Half the events will go the wrong direction, so this number should be _at least_ double the number of scint hits you want.

src/mqDetectorConstruction.cc.NaIOnly.UNL - as it looks. This is the detector construction, of the NaI+PMT unit only, and dimensions are according to the specific unit in the UNL lab.

--------

MilliQan.cc.default - copy of the original MilliQan.cc written by Ryan. I recommend copying this file to its stage file whenever you intend to seriously use the Sim, and don't require visualization.

gammaSetup.sh - added line to copy MilliQan.cc.default to stage.
cosmicSetup.sh - added line to copy MilliQan.cc.default to stage.
