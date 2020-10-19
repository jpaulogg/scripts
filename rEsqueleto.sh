#!/usr/bin/env bash
#------------------------------------------------------------
# Script   : header
# Descrição: Cria um cabeçalho como esse
# Criado em: 10 de setembro de 2020
# Autor    : João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#-------------------------------------------------------------

# Variáveis
dia=$( date +'%d de %B de %Y' )
versao=$(R --version | head -n1 | awk {'print $1, $3'} )

esquelto="#-------------------------------------------------------------------------------
tag
#
# João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#										   		   		$dia
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
lapply(pacotes, library, character.only=TRUE)
# }}}

# ESTRUTURA ----------------------------------------------------------------{{{
#...1 - Importação
#...2 - Manipulação
#...3 - Visualização
#...4 - Exportação
# }}}

# -----------------------------------------------------------------------------
#                                 1. IMPORTAÇÃO
# {{{
# caminho para o arquivo de entrada/ ou o endereço de download.
setwd(\"~/R/tag\")

if (file.exists(\"tag\")) {
  entrada <- \"tag\"
} else {
  entrada <- \"tag\"
}

tag <- fread(file = entrada,
		     na.strings = c('\"-\"', '\"X\"', '\"..\"', '\"...\"'),
		     colClasses = list(\"factor\" = c(tag)),
		     col.names = c(\"Anotag\", \"UFtag\", \"tag\",
			 			   \"tag\", \"tag\", \"Valortag\"))
# }}}
#
# -----------------------------------------------------------------------------
#                                 2. MANIPULAÇÃO
# {{{
# }}}
# -----------------------------------------------------------------------------
#                                 3. VISUALIZAÇÃO 
# {{{
# }}}
# -----------------------------------------------------------------------------
#                                 4. EXPORTAÇÃO 
# {{{
# }}}
"

echo "$esquelto"

exit 0

# vim: set fdm=marker:
