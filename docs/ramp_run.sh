#!/bin/bash
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

cd /Users/rmckinney/ramp/docs
jupyter nbconvert --execute data.ipynb
make -f Makefile clean
make -f Makefile html

git add .
git commit -m "update ramp data"
git push