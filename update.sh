#!/bin/bash
echo "# Updating arcade"
# update all Readme with main
#./scripts/update_main.py base/*
# generate .html for changed mains
kkmanual Readme.md
mdpp Readme.md