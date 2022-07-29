#!/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
conda env list
conda activate wfrt

make clean

make html

git add .

git commit -m "add ramp data"

git push