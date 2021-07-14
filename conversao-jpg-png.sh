#!/bin/bash

<<COMENTARIO
CAMINHO=~/Documentos/GitHubPessoal/Shellscript/imagens

for imagem in $@
do 
    convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
done

$@ pega todos parametros passados pelo usuario na execucao do script
COMENTARIO

cd ~/Documentos/GitHubPessoal/Shellscript/imagens
for imagem in *.jpg
do 
    imagem_sem_extensao=$(ls $imagem | awk -F. '{print $1}')
    convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
done
<<COMENTARIO1
cd ~/Documentos/GitHubPessoal/Shellscript/imagens
for imagem in *.jpg
do 
    convert $imagem $imagem.png
done
DESSA MANIERA FICA EXTENSOES NO NOME DA IMAGEM, DUAS VEZES 
DEVERÁ SER USADO O COMANDO AWK
ls | awk -F. '{print $1 }'
COMENTARIO1