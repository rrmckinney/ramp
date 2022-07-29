#!/bin/bash

cd /Users/rmckinney/ramp
make -f /docs/Makefile clean
make -f /docs/Makefile html

git add .
git commit -m "update ramp data"
git push