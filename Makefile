PDF = pdflatex
LOGS = *.aux *.log *.out
TEXFILE ?= main.tex
ifeq ($(shell uname -s),Linux)
   VIEWER = evince
endif
ifeq ($(shell uname -s),Darwin)
   VIEWER = open
endif

all:
	make pdf
	make view

pdf: $(TEXFILE)
	$(PDF) $(TEXFILE)
view: 
	$(VIEWER) *.pdf		
clean:
	rm -rf $(LOGS) *.pdf
