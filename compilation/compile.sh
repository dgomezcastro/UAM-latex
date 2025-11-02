#!/bin/sh

pdflatex -shell-escape -interaction=batchmode curso-latex.tex
biber --input-directory tex curso-latex
pdflatex -shell-escape -interaction=batchmode curso-latex.tex
pdflatex -shell-escape -interaction=batchmode curso-latex.tex