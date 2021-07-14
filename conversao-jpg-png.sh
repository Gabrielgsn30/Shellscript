#!/bin/bash

CAMINHO=~/Documentos/GitHubPessoal/Shellscript/imagens

for imagem in $@
do 
    convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
done
