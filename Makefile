main.pdf: main.tex sections/$(wildcard .tex) main.bib
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
	open main.pdf

clean:
	rm main.pdf *.aux *.out *.bbl *.blg *.log
