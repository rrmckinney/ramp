#!/bin/bash
HOME = /home/rmckinney git push origin master
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_ed25519"
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt

cd /Users/rmckinney/ramp/docs
jupyter nbconvert  --execute --clear-output /Users/rmckinney/ramp/docs/source/data.ipynb
make -f Makefile clean
make -f Makefile html


git remote set-url origin https://github.com/rrmckinney/ramp.git
git add .
git commit -m "update ramp data"
git push