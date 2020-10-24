#!/usr/bin/env bash

# DESCRIÇÃO: Cria um novo script executável 

# cabeçalho
header="#!/usr/bin/env bash
#------------------------------------------------------------------------------
#
tag
#
#       Autor: João Paulo G. Garcia 
#       email: <joaopauloggarcia@gmail.com>
#                                                     $( date +'%d de %B de %Y')
#------------------------------------------------------------------------------
# Descrição:
#
#------------------------------------------------------------------------------"

# Entrar no diretório de scripts
cd ~/.local/bin

# Testar se há apenas um argumento
[[ $# -ne 1 ]] && echo "mais de um nome foi passado!" && exit 1

# Testar se o arquivo já existe
[[ -f "$1".sh ]] && $EDITOR "$1".sh && exit 0 

echo "$header" >> "$1".sh 
chmod +x "$1".sh
$EDITOR "$1".sh

exit 0
