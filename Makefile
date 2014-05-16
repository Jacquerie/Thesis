all: slide sunto tesi

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.log
	rm -f *.maf
	rm -f *.mtc
	rm -f *.mtc0
	rm -f *.nav
	rm -f *.out
	rm -f *.run.xml
	rm -f *.snm
	rm -f *.toc

slide:
	pdflatex tex/slide.tex

sunto:
	pdflatex tex/sunto.tex
	biber -U -u sunto
	pdflatex tex/sunto.tex
	pdflatex tex/sunto.tex

tesi:
	pdflatex tex/tesi.tex
	biber -U -u tesi
	pdflatex tex/tesi.tex
	pdflatex tex/tesi.tex

.PHONY: all clean slide sunto tesi
