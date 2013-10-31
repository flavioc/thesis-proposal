
all: proposal.pdf

proposal.pdf: proposal.tex
	pdflatex proposal.tex
	pdflatex proposal.tex
