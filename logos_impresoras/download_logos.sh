#!/bin/bash
############ uso: #################
# ./download_logos.sh {IMPRESORA} #
###################################
lpr -P $1 -o raw genera_miraxB.txt
lpr -P $1 -o raw miraxB.pcx

lpr -P $1 -o raw genera_miraxN.txt
lpr -P $1 -o raw miraxN.pcx

lpr -P $1 -o raw genera_rayoB.txt
lpr -P $1 -o raw rayoB.pcx

lpr -P $1 -o raw genera_rayoN.txt
lpr -P $1 -o raw rayoN.pcx

lpr -P $1 -o raw genera_weliverB.txt
lpr -P $1 -o raw weliverB.pcx

lpr -P $1 -o raw genera_weliverN.txt
lpr -P $1 -o raw weliverN.pcx
