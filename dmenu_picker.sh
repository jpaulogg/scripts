#!/bin/sh

# Script para abrir arquivos no editor de texto usando o dmenu
# TODO: lançar o dmenu em loop não é a melhor solução...gostaria de alterar a
# lista de opções sem precisar relançar o dmenu toda vez que selecionar um
# diretório. O patch "dynamicoptions" faz algo assim, mas não me agradou.
exec > /dev/null 2>&1

# caso um diretório tenha sido passado como argumento
[ -d "$1" ] && cd "$1"

selection=$( ls -ap1 --group-directories-first | dmenu -i -l 20 -fn 16 )

# loop para navegar pelos diretórios
while [ -d "$selection" ]
do
	cd "$selection"
	selection=$( ls -ap1 --group-directories-first | dmenu -i -l 20 -fn 16 )
done

# loop para abrir todos os arquivos selecionados em janelas diferentes
[ -e "$selection" ] && echo "$selection" | while read file
do
	st -e nvim "$file" &
done

exit 0
