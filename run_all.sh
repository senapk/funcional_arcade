#!/bin/bash

# Nome fixo do arquivo principal
MAIN_FILE="src/hs/Main.hs"

# Procura todos os arquivos Readme.md
find . -name "Readme.md" | while read -r readme; do
  dir=$(dirname "$readme")  # Obtém o diretório do Readme.md
  echo "Entrando na pasta: $dir"

  (
    cd "$dir" || exit
    echo "Executando: tko exec Readme.md $MAIN_FILE"
    tko exec Readme.md "$MAIN_FILE" -cq
  )
done
