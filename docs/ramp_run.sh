#!/bin/bash
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

cd /Users/rmckinney/ramp/docs
jupyter nbconvert  --execute --clear-output /Users/rrmckinney/ramp/docs/source/data.ipynb
make -f Makefile clean
make -f Makefile html

git remote set-url origin https://github.com/rrmckinney/ramp.git
git add .
git commit -m "update ramp data"
git push