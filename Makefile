
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
		related_work.tex \
		abstract.tex \
		execution_trace1.pdf execution_trace2.pdf execution_trace3.pdf execution_trace4.pdf
	pdflatex proposal.tex
	pdflatex proposal.tex
	bibtex proposal
	pdflatex proposal.tex
	pdflatex proposal.tex

clean:
	rm -f proposal.pdf proposal.bbl proposal.blg proposal.log proposal.lot \
		proposal.brf proposal.lof proposal.toc proposal.out \
		proposal.aux language.log
