#!/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
source /Users/rmckinney/opt/miniconda3/envs/wfrt
conda env list
conda activate wfrt

make clean

make html

git add .

git commit -m "add ramp data"

git push