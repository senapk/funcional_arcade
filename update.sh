#!/bin/bash
# update all Readme with main
hsmod base/* --vpl .vpl --update
# generate .html for changed mains
indexer
# run tests
htest base/*