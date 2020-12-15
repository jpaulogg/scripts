#!/usr/bin/env bash
#------------------------------------------------------------
# Script   : header
# Descrição: Cria um cabeçalho como esse
# Criado em: 10 de setembro de 2020
# Autor    : João Paulo G. Garcia <joaopauloggarcia@gmail.com>
#-------------------------------------------------------------

esquelto="
# PACOTES                                                                  #{{{
pacotes <- list(\"data.table\", \"forcats\", \"magrittr\",
                      \"ggplot2\", \"plotly\", \"RColorBrewer\")

for (p in pacotes) {
  if (!require(p, character.only = TRUE, quietly = TRUE)) {
    install.packages(p)
    library(p, character.only = TRUE)
  }
}                                                                          #}}}

# -----------------------------------------------------------------------------
#                               1. ENTRADA

# caminho para o arquivo de entrada/ ou o endereço de download.
setwd(\"~/R/tag\")

# tag                                                                      #{{{
url     <- \"tag\"
entrada <- \"tag\"

if (file.exists(entrada)) {
  entrada <- \"tag\"
} else {
  entrada <- url
}

tab_tag <- fread(entrada,
                  na.strings = c('\"-\"', '\"X\"', '\"..\"', '\"...\"'),
                  colClasses = list(\"factor\" = c(tag)),
                  col.names = c(\"Anotag\", \"UFtag\", \"tag\",
                                \"tag\", \"tag\", \"Valortag\"))           #}}}

# -----------------------------------------------------------------------------
#                               2. MANIPULAÇÃO

# -----------------------------------------------------------------------------
#                               3. VISUALIZAÇÃO 

# -----------------------------------------------------------------------------
#                               4. SAÍDA

# -----------------------------------------------------------------------------
"

echo "$esquelto"

exit 0
