all: ancol.pdf

ancol.pdf: ancol.tex preamble.sty questions/* ancol-*.pdf problems.tex
	lualatex $<

asy:
	asy *.asy

clean:
	rm *.aux *.log *.pre *.toc

