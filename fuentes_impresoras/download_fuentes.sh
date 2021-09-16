#!/bin/bash
############ uso: #################
# ./download_fuentes.sh {IMPRESORA} #
###################################
lpr -P $1 -o raw EliminaFuentes.txt

lpr -P $1 -o raw ArialNBL8Y.bin
lpr -P $1 -o raw ArialB12IW.bin
lpr -P $1 -o raw Arial8A.bin
lpr -P $1 -o raw Arial8NarX.bin
lpr -P $1 -o raw Arial8F.bin
lpr -P $1 -o raw Arial17D.bin

lpr -P $1 -o raw ListaFuentes.txt
lpr -P $1 -o raw TestFuentes.txt
