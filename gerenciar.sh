#!/bin/bash

echo "---------------------"
echo "   Funcionalidades"
echo "---------------------"

# --- Funcionalidades ---
# Funçao criar arq
criar_arq(){
  nano "$1"
}

# Funçao apagar arq
apagar_arq(){
  rm "$1"
}

# --- Opçoes ---
echo "[1] - Criar arquivo"
echo "[2] - Apagar arquivo"
echo "[3] - Criar diretorio"
echo "[4] - Apagar diretorio"
echo "[5] - Listar permissoes"
echo "[6] - Modificar permissoes"
echo "[7] - Mover arquivos/diretorios"
echo "[8] - Renomear arquivos/diretorios"
echo "[0] - Sair"
echo ""

read -p "Escolha uma das opçoes: " esc

echo -e "Sua escolha $esc"

if [[ "$esc" != "0" ]]; then
  if [[ "$esc" == "1" ]]; then
    read -p "Digite o nome do arquivo: " arq
    criar_arq $arq
  fi
  if [[ "$esc" == "2" ]]; then
    read -p "Digite o nome do arquivo que deseja apagar: " arq
    apagar_arq $arq
  fi
elif [[ "$esc" == "0" ]]; then
  echo "Processo  sendo encerrado$sleep 1.$sleep 1.$sleep 1."
  exit 0
fi
