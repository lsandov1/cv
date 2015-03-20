#!/bin/bash

file=$1
latex $file.tex && dvipdf $file.dvi
