#!/bin/bash
############ uso: #################
# ./imprime_etiqueta_chx.sh {IMPRESORA} #
###################################
lpr -P $1 -o raw PruebaEtiqueta.txt
