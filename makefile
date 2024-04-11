all: ancol.pdf

ancol.pdf: ancol.tex preamble.sty questions/*
	lualatex $<

clean:
	rm *.aux *.log *.pre *.toc

