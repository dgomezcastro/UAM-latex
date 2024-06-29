#!/bin/sh

for i in {0..6}
do
    cd sesion-$i
    pdflatex -shell-escape sesion$i.tex
    pdflatex -shell-escape sesion$i.tex
    rm *.aux
    rm *.log
    rm *.nav
    rm *.out
    rm *.snm
    rm *.toc
    rm *.vrb
    rm -R _minted-*
    cd ..
done