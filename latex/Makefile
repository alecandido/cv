DOCUMENT=cv

all: $(DOCUMENT).pdf

$(DOCUMENT).pdf: main.tex
	latexmk --jobname=$(basename $@) --pdf $<

view:
	open $(DOCUMENT).pdf

clean:
	latexmk -c
