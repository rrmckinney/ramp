#!/bin/bash
source ~/miniconda3/bin

conda activate wfrt

make clean

make html

git add .

git commit -m "add ramp data"

git push