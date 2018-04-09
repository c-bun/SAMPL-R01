#!/bin/bash
xelatex Research_and_SA.tex

for auxfile in *.aux
do
    bibtex `basename $auxfile .aux`
done

xelatex Research_and_SA.tex
xelatex Research_and_SA.tex

rm ./*.out
rm ./*.aux
rm ./*.bbl
rm ./*.blg
rm ./*.log

open Research_and_SA.pdf
