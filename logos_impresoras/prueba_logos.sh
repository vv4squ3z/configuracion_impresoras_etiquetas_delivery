#!/bin/bash
############ uso: #################
# ./prueba_logos.sh {IMPRESORA} #
###################################
lpr -P $1 -o raw prueba_mirax.txt
lpr -P $1 -o raw prueba_rayo.txt
lpr -P $1 -o raw prueba_welivery.txt
