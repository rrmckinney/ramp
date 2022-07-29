#!/bin/bash
source  /Users/rmckinney/opt/miniconda3/envs/wfrt

make clean

make html

git add .

git commit -m "add ramp data"

git push