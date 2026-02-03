#!/bin/bash

# Script de automação para busca de indicadores em logs
# Desenvolvido por: Roan Silva dos Anjos

# Definindo o diretório de busca
directory="/var/log"

# Definindo a flag ou padrão a ser buscado
flag="thm-flag01-script"

echo "Flag search in directory: $directory in progress..."

# Laço de repetição para iterar sobre todos os arquivos .log
for file in "$directory"/*.log; do
    # Verifica se o arquivo contém a flag (silenciosamente)
    if grep -q "$flag" "$file"; then
        # Exibe apenas o nome do arquivo onde a flag foi encontrada
        echo "Flag found in: $(basename "$file")"
    fi
done
