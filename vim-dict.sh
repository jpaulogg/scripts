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
read -p "Tipo dos arquivos: " ft
echo

PS3=$'\nNúmero do diretório ou arquivo a ser incluído: '
 
cd ~/.config/nvim/dict

select input in $( echo $1* ) Sair 
do
    [  $input == Sair ] && echo $'Finalizando seleção\n' && break

    [[ -d $input ]] && sed '/^" vim: /d' $input/*."$ft" \
        >> "$ft"_dict.txt

    [[ -f $input ]] && sed '/^" vim: /d' $input \
        >> "$ft"_dict.txt

    tr '[[:punct:][:digit:][:space:]]' '\n' < "$ft"_dict.txt \
        | sed '/^\n*$/d' \
        | sort -u -o "$ft"_dict.txt
done

exit 0
