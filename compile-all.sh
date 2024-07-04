#!/bin/sh

for i in {0..6}
do
    cd 0$i*
    pdflatex -shell-escape sesion.tex
    pdflatex -shell-escape sesion.tex
    cd ..
done

rm ./**/*.aux
rm ./**/*.log
rm ./**/*.nav
rm ./**/*.out
rm ./**/*.snm
rm ./**/*.toc
rm ./**/*.vrb
rm ./**/*.fdb_latexmk
rm ./**/*.synctex.gz
rm ./**/*.fls
rm -R ./**/_minted-*