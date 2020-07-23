#!/bin/bash
# update all Readme with main
#./scripts/update_main.py base/*
# generate .html for changed mains
indexer manual manual.md --show
indexer board
indexer links