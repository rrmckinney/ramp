#!/bin/bash
export PATH="/Users/rmckinney/opt/miniconda3/bin:/Users/rmckinney/opt/miniconda3/condabin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/usr/bin/git"
export SHELL=/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

#cd /Users/rmckinney/ramp/docs
jupyter nbconvert  --execute --clear-output /Users/rmckinney/ramp/docs/source/data.ipynb
rm  -r /Users/rmckinney/ramp/docs/source/data/*
make -f Makefile clean
make -f Makefile html

python index.py
