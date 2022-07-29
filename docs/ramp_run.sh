#!/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

make -f Makefile clean 

make -f Makefile html 

git add .

git commit -m "add ramp data"

git push    