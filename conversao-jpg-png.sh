#!/bin/bash

CAMINHO=~/Documentos/GitHubPessoal/Shellscript/imagens
<<COMENTARIO
for imagem in $@
do 
    convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
done

$@ pega todos parametros passados pelo usuario na execucao do script
COMENTARIO

cd ~/Documentos/GitHubPessoal/Shellscript/imagens
for imagem in *.jpg
do 
    convert $imagem $imagem.png
done
