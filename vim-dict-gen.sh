#!/usr/bin/env bash
#------------------------------------------------------------------------------
#                             Gerador de Dicionarios
#
# João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#                                                     18 de outubro de 2020
#------------------------------------------------------------------------------
# Descrição: Reune termos usados em arquivos de determinado  tipo (.html, .py
#            .vim, .c, etc) em um único arquivo para ser usado pela função de
#            autocomplete do vim.
#
#------------------------------------------------------------------------------
# Caminho para os arquivos
dict_dir=~/.config/nvim/dict

read -p "Tipo dos arquivos: " ft
echo

PS3=$'\nNúmero do diretório ou arquivo a ser incluído: '

select input in $( echo $1* ) Sair 
do

    [  $input == Sair ] && echo $'Finalizando seleção\n' && break
    
    [[ -d $input ]] && cat $input/*."$ft" \
        >> "$dict_dir"/"$ft"_dict.txt

    [[ -f $input ]] && cat $input \
        >> "$dict_dir"/"$ft"_dict.txt

    tr -s '[:punct:][:digit:][:space:]' '\n' < "$dict_dir"/"$ft"_dict.txt \
        | sort -u -o "$dict_dir"/"$ft"_dict.txt

done

exit 0
