#!/bin/sh
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt


make clean SPHINXBUILD='/Users/rmckinney/opt/miniconda3/envs/wfrt/python' '/Users/rmckinney/opt/miniconda3/envs/wfrt/sphinx-build'


make html SPHINXBUILD='/Users/rmckinney/opt/miniconda3/envs/wfrt/python' '/Users/rmckinney/opt/miniconda3/envs/wfrt/sphinx-build'


git add .

git commit -m "add ramp data"

git push    