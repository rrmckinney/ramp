#!/bin/bash

source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

cd /Users/rmckinney/ramp/docs
jupyter nbconvert  --execute --clear-output /Users/rmckinney/ramp/docs/source/data.ipynb
rm  -r /source/data/*
make -f Makefile clean
make -f Makefile html


git -C ~/ramp/docs add .
git -C ~/ramp/docs commit -m "update ramp data"
git -C ~/ramp/docs push -u origin master
