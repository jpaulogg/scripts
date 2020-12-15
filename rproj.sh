#!/usr/bin/env bash
#------------------------------------------------------------
# Script   : R-proj
# Descrição: Cria um projeto na pasta do R
# Criado em: 08 de setembro de 2020
# Autor    : João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#-------------------------------------------------------------

# Entrar no diretório do R
cd ~/R
printf '%s\n' */
echo

# Nomes do projeto e do script
read -p "Nome do Projeto: " PROJETO

# Testar se já existe um diretório com o nome do projeto
[[ -d $PROJETO ]] && $EDITOR "$PROJETO" && exit 0

read -p "Nome do Script: " SCRIPT

# Criar pastas e arquivos
mkdir "$PROJETO"
cd    "$PROJETO"
mkdir Entrada
mkdir Saida

# Criar arquivos de rascunhos e testes
resq.sh >> rascunhos_"$PROJETO".R

# Criar arquivos e tornar script executável
echo $'# TESTES\n' >> testes_"$PROJETO".R
nvim-snip.sh r teste >> testes_"$PROJETO".R
chmod +x "$SCRIPT".R

# abrir rascunhos com o neovim
$EDITOR rascunhos_"$PROJETO".R

exit 0
