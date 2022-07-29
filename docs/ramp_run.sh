#!/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt


make clean

make html

git add .

git commit -m "add ramp data"

git push