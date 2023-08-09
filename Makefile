# simple makefile to produce the English cv

VER  := english
GIT_REV_PARSE := $(shell git rev-parse --short HEAD)
NAME := CV-Leonardo-Sandoval-Gonzalez
FULL_NAME := $(NAME)-$(GIT_REV_PARSE)

all: $(VER).pdf
	cp $< $(FULL_NAME).pdf
	cp $(FULL_NAME).pdf ~/Downloads

$(VER).pdf: $(VER).dvi
	dvipdf $<
	rm -f $(VER).dvi

$(VER).dvi: $(VER).tex
	latex $<
	rm -f $(VER).aux $(VER).fls $(VER).log $(VER).out $(VER).tex~ $(VER).fdb_latexmk

clean:
	rm -rf *.pdf *.dvi *.out

setup:
	sudo apt install -y texlive-latex-base texlive-latex-extra

.PHONY: $(VER).dvi
