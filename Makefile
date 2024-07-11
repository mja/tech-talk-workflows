workflows:
	quarto render workflows.qmd

%.html : %.qmd
		quarto render $<

all: workflows.html symposium.html thesis.html