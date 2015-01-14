#!/bin/bash

file=english
latex $file.tex && dvipdf $file.dvi
