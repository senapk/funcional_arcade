#!/bin/bash
echo "# Updating arcade"

set -e 
feno indexer Readme.md base
feno mdpp Readme.md
echo "Verificando problemas"
feno build base/* --remote --check --erase --pandoc
echo "Fim"