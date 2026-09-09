#!/bin/bash
# Script definitivo para reorganizar os áudios narr-v2
# Só renomeia se o arquivo existir

move_if_exists() {
  if [ -f "$1" ]; then
    mv "$1" "$2"
    echo "Renomeado: $1 -> $2"
  else
    echo "Ignorado (não existe): $1"
  fi
}

# Lista atual de arquivos que você mostrou:
# narr-v2-01.mp3, narr-v2-02.mp3, narr-v2-03.mp3,
# narr-v2-12.mp3, narr-v2-13.mp3, narr-v2-14.mp3, narr-v2-15.mp3,
# narr-v2-24.mp3 até narr-v2-31.mp3

# Como eles já estão corretos, não precisamos renomear nada.
# O script apenas confirma o estado.

echo "Arquivos atuais:"
ls -1 narr-v2-*.mp3
