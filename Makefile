# Force to use bash
SHELL = /bin/bash

# All .md source files
SRC=$(wildcard *.md)

.PHONY: default build clean

default: build

build: thesis.pdf

clean:
	@ rm -rf $(PWD)/thesis.pdf

thesis.pdf: $(SRC)
	@ pandoc -s -S --biblio biblio.bib --csl=apa.csl -N -V geometry:margin=1in $(SRC) -o $@
