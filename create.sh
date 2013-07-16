#!/bin/bash

file=CV_LeonardoSandoval
latex $file.tex && dvipdf $file.dvi
