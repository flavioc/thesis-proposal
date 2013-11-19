
all: proposal.pdf

proposal.pdf: proposal.tex	\
		introduction.tex \
		coordination.tex \
		implementation.tex \
		language.tex \
		experiments.tex \
		proofs.tex \
		roadmap.tex \
		refs.bib \
		appendix.tex \
		statement.tex \
		related_work.tex
	pdflatex proposal.tex
	pdflatex proposal.tex
	bibtex proposal
	pdflatex proposal.tex
	pdflatex proposal.tex

clean:
	rm -f proposal.pdf proposal.bbl proposal.blg proposal.log proposal.lot \
		proposal.brf proposal.lof proposal.toc proposal.out \
		proposal.aux language.log
