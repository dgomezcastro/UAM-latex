#!/bin/sh

for i in {1..9}
do
    echo $i
    cd 0$i*
    pdflatex -shell-escape -interaction=batchmode sesion-0$i.tex
    pdflatex -shell-escape -interaction=batchmode sesion-0$i.tex
    biber --input-directory ../tex sesion-0$i 
    pdflatex -shell-escape -interaction=batchmode sesion-0$i.tex
    cd ..
done

for i in {10..12}
do
    echo $i
    cd $i*
    pdflatex -shell-escape -interaction=batchmode sesion-$i.tex
    pdflatex -shell-escape -interaction=batchmode sesion-$i.tex
    biber --input-directory ../tex sesion-$i 
    pdflatex -shell-escape -interaction=batchmode sesion-$i.tex
    cd ..
done

pdflatex -shell-escape -interaction=batchmode curso-latex.tex
pdflatex -shell-escape -interaction=batchmode curso-latex.tex
biber --input-directory ../tex sesion-$i 
pdflatex -shell-escape -interaction=batchmode curso-latex.tex

./clean-up.sh