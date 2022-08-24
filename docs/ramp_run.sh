#!/bin/bash
export PATH="/Users/rmckinney/opt/miniconda3/bin:/Users/rmckinney/opt/miniconda3/condabin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/usr/bin/git:/usr/bin/ssh"
source /Users/rmckinney/miniconda3/bin/activate
conda activate /Users/rmckinney/opt/miniconda3/envs/wfrt
export GIT_SSH_COMMAND="ssh -i /Users/rmckinney/.ssh/id_ed25519.pub"

#cd /Users/rmckinney/ramp/docs
jupyter nbconvert  --execute --clear-output /Users/rmckinney/ramp/docs/source/data.ipynb
rm  -r /Users/rmckinney/ramp/docs/source/data/*
make -f Makefile clean
make -f Makefile html

git add .
git commit -m "update ramp data"
git push-u origin main