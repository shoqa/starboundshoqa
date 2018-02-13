#!/bin/bash
cd ../data/mods
git clone https://github.com/sayterdarkwynd/FrackinUniverse.git
cd FrackinUniverse
frackinUniverseLatestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $frackinUniverseLatestTag
cd ../../..
