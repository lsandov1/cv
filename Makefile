# simple makefile to produce the English cv

VER=english
NAME=LeonardoSandovalGonzalez

all: $(VER).pdf
	mv $< $(NAME).pdf

$(VER).pdf: $(VER).dvi
	dvipdf $<
	dvipdf $<

$(VER).dvi: $(VER).tex
	latex $<

clean:
	rm -rf *.pdf *.dvi *.out

.PHONY: $(VER).dvi
