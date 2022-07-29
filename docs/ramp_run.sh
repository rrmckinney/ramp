#!/bin/sh
source /Users/rmckinney/
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

make -f Makefile clean 

make -f Makefile html 

git add .

git commit -m "add ramp data"

git push    