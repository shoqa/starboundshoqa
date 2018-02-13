#!/bin/bash
cd data/mods
cd FrackinUniverse
git fetch
frackinUniverseLatestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $frackinUniverseLatestTag
cd ../../..
