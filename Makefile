# simple makefile to produce the English cv

VER=english

all: $(VER).pdf
	mv $< CV.pdf

$(VER).pdf: $(VER).dvi
	dvipdf $<
	dvipdf $<

$(VER).dvi: $(VER).tex
	latex $<

clear:
	rm -rf *.pdf *.dvi *.out

.PHONY: $(VER).dvi
