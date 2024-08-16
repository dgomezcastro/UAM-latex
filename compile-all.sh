#!/bin/sh

for i in {1..10}
do
    cd 0$i*
    pdflatex -shell-escape sesion.tex
    pdflatex -shell-escape sesion.tex
    cd ..
done

./clean-up.sh