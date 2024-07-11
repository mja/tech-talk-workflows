workflows:
	quarto render workflows.qmd

%.html : %.qmd
		quarto render $<

all: workflows.html presentation.html document.html