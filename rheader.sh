#!/usr/bin/env bash
#------------------------------------------------------------------------------
#
#                          CABEÇALHO PARA SCRIPTS EM R
#
#       Autor: João Paulo G. Garcia
#       email: <joaopauloggarcia@gmail.com>
#                                                     22 de outubro de 2020
#------------------------------------------------------------------------------

# Variáveis
dia=$( date +'%d de %B de %Y' )
versao=$(R --version | head -n1 | awk {'print $1, $3'} )

header="#-------------------------------------------------------------------------------
#
tag
#
#     Autor : João Paulo G. Garcia 
#     email : <joaopauloggarcia@gmail.com>
#                                             $dia
#-------------------------------------------------------------------------------
# Software  : $versao
# Requisitos: Rtools (Windows, pode ser instalado pelo 'installr')
#-------------------------------------------------------------------------------
# Descrição : tag
#
#-------------------------------------------------------------------------------

# ESTRUTURA
#...1 - ENTRADA ......................... (importar dados de entrada)
#...2 - MANIPULAÇÃO ..................... (filtrar, adicionar colunas, etc)
#...3 - VISUALIZAÇÃO .................... (gráficos, tabelas, etc)
#...4 - SAÍDA ........................... (exportar resultados)

"
echo "$header"

exit 0

