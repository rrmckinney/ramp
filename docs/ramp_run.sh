#!/bin/bash

cd /Users/rmckinney/ramp/docs
make -f Makefile clean
make -f Makefile html

git add .
git commit -m "update ramp data"
git push