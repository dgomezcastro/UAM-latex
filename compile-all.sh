#!/bin/sh

for i in {1..9}
do
    cd 0$i*
    pdflatex -shell-escape sesion.tex
    pdflatex -shell-escape sesion.tex
    cd ..
done

cd 10*
pdflatex -shell-escape sesion.tex
pdflatex -shell-escape sesion.tex
cd ..

./clean-up.sh