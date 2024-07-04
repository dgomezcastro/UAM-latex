#!/bin/sh

for i in {0..6}
do
    cd 0$i*
    pdflatex -shell-escape sesion.tex
    pdflatex -shell-escape sesion.tex
    cd ..
done

./clean-up.sh