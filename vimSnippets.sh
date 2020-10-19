#!/usr/bin/env bash
#------------------------------------------------------------
# Script   : nvim_snippets
# Descrição: utilizado com a função do vim "read" para snippets
# Criado em: 11 de outubro de 2020
# Autor    : João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#-------------------------------------------------------------

sed -n '/'"$2"0'/,/'"$2"1'/{//!p;}' ~/.config/nvim/snippets/"$1"snippet
