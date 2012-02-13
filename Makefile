.PHONY: open clean 

ASSIGN		= notes

PARTS		= part1

MAIN_TEX	= ${ASSIGN}.tex

PARTS_TEX	= ${addsuffix .tex,${PARTS}} 

PDF     = ${ASSIGN}.pdf

FIGURES = 

TEX     = pdflatex
TEXOPTS = -halt-on-error

open: ${PDF}
	open $< || gnome-open $<

${PDF}: ${MAIN_TEX} ${PARTS_TEX} ${FIGURES}
	${TEX} ${TEXOPTS} $< 
	${TEX} ${TEXOPTS} $<

clean:
	rm -f *.log *.aux *.dvi ${PDF}
