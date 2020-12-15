#!/usr/bin/env bash
#------------------------------------------------------------------------------
#
#                             CLEAN R SOURCE TAGS
#
#     Autor: João Paulo G. Garcia 
#     email: <joaopauloggarcia@gmail.com>
#                                                     29 de novembro de 2020
#------------------------------------------------------------------------------

cd /home/jpgg/R/x86_64-pc-linux-gnu-library/Source/
find -regextype posix-egrep ! -regex '.*(.R|.r|.Rd|.rd)$' -delete -nowarn >> /dev/null
find ./** -empty -type d -delete -nowarn >> /dev/null

exit 0
