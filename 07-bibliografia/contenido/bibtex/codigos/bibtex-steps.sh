rm ejemplo-bibtex.aux
rm ejemplo-bibtex.bbl
echo "\n\nRun 1\n\n"
pdflatex ejemplo-bibtex.tex
mv ejemplo-bibtex.pdf ejemplo-bibtex-1.pdf
echo "\n\nBibtex\n\n"
bibtex ejemplo-bibtex 
cp ejemplo-bibtex.bbl ejemplo-bibtex.bbl-save
echo "\n\nRun 2\n\n"
pdflatex ejemplo-bibtex.tex
mv ejemplo-bibtex.pdf ejemplo-bibtex-2.pdf
echo "\n\nRun 3\n\n"
pdflatex ejemplo-bibtex.tex
mv ejemplo-bibtex.pdf ejemplo-bibtex-3.pdf