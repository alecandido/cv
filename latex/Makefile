DOCUMENT=cv

all: $(DOCUMENT).pdf

$(DOCUMENT).pdf: main.tex
	latexmk --jobname=$(basename $@) --pdflua $<

view:
	open $(DOCUMENT).pdf

clean:
	latexmk -c
