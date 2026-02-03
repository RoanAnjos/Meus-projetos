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

# 🚩 Linux Shell Automation: Flag Hunter

Este repositório contém um script Bash desenvolvido durante os laboratórios de **Linux Shell** no **TryHackMe**. O foco do projeto é demonstrar habilidades de automação e análise de logs para segurança cibernética.

## 📝 Descrição do Projeto
O script `flag_hunt.sh` foi criado para automatizar a varredura de múltiplos arquivos de logs no diretório `/var/log`. Ele busca por uma string específica (flag) e identifica em qual arquivo ela está armazenada.

### Por que isso é útil no SOC?
- **Investigação Forense:** Analistas de SOC utilizam scripts similares para buscar por "IOCs" (Indicadores de Comprometimento) em servidores Linux.
- **Auditoria de Acessos:** Automatiza a busca por tentativas de invasão em arquivos como o `authentication.log`.

## 🛠️ Comandos Utilizados
- `grep`: Ferramenta de busca de padrões.
- `for loop`: Estrutura de repetição para automação de tarefas em massa.
- `chmod`: Gerenciamento de permissões de execução.
- `nano`: Editor de texto via linha de comando.

## 🚀 Como testar
1. Clone o repositório ou crie o arquivo `.sh`.
2. Dê permissão de execução:
   ```bash
   chmod +x flag_hunt.sh
