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
#       Autor : João Paulo G. Garcia 
#       email : <joaopauloggarcia@gmail.com>
#                                             $dia
#-------------------------------------------------------------------------------
# Software  : $versao
# Requisitos: Rtools (Windows, pode ser instalado pelo 'installr')
#-------------------------------------------------------------------------------
# Descrição : tag
#
#-------------------------------------------------------------------------------

# PACOTES ------------------------------------------------------------------{{{
pacotes <- list(\"data.table\", \"forcats\", \"magrittr\",
                \"ggplot2\", \"plotly\", \"RColorBrewer\")

pacotes_instalados <- pacotes %in% rownames(installed.packages())

# instalar pacotes
if (any(pacotes_instalados == FALSE)) {
  install.packages(pacotes[!installed_packages])
}
# carregar pacotes
lapply(pacotes, library, character.only=TRUE)                               }}}

# ESTRUTURA ----------------------------------------------------------------{{{
#...1 - Base de dados
#...2 - Manipulação
#...3 - Visualização
#...4 - Exportação                                                          }}}

"
echo "$header"

exit 0

# vim: set fdm=marker:
