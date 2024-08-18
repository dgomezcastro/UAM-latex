#!/bin/sh

for i in {1..9}
do
    echo $i
    cd 0$i*
    pdflatex -shell-escape -interaction=batchmode sesion.tex
    pdflatex -shell-escape -interaction=batchmode sesion.tex
    cd ..
done

for i in {10..12}
do
    echo $i
    cd $i*
    pdflatex -shell-escape -interaction=batchmode sesion.tex
    pdflatex -shell-escape -interaction=batchmode sesion.tex
    cd ..
done 

./clean-up.sh