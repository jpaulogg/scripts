#!/usr/bin/env bash
#------------------------------------------------------------
# Script   : header
# Descrição: Cria um cabeçalho como esse
# Criado em: 10 de setembro de 2020
# Autor    : João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#-------------------------------------------------------------

esquelto="# -----------------------------------------------------------------------------
#                                 1. BASE DE DADOS

# caminho para o arquivo de entrada/ ou o endereço de download.
setwd(\"~/R/tag\")

# tag                                                                       {{{
url <- \"tag\"

if (file.exists(\"tag\")) {
  entrada <- \"tag\"
} else {
  entrada <- url
}

tag <- fread(file = entrada,
		     na.strings = c('\"-\"', '\"X\"', '\"..\"', '\"...\"'),
		     colClasses = list(\"factor\" = c(tag)),
		     col.names = c(\"Anotag\", \"UFtag\", \"tag\",
                                   \"tag\", \"tag\", \"Valortag\"))        #}}}
# -----------------------------------------------------------------------------
#                                 2. MANIPULAÇÃO
#                                                                           {{{

                                                                           #}}}
# -----------------------------------------------------------------------------
#                                 3. VISUALIZAÇÃO 
#                                                                           {{{

                                                                           #}}}
# -----------------------------------------------------------------------------
#                                 4. EXPORTAÇÃO 
#                                                                           {{{

                                                                           #}}}

# vim: set sw=2 et ft=r fdm=marker:
"

echo "$esquelto"

exit 0

# vim: set fdm=marker:
