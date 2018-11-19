.PHONY : all
all: pictures.dat py.dat pdf.dat

pictures.dat : Chan_Borges_Ph20_Assignment_3.ipynb
	runipy $< $@

py.dat : Chan_Borges_Ph20_Assignment_3.ipynb
	jupyter nbconvert --to python $< $@

pdf.dat : Chan_Borges_Ph20_Assignment_3.tex
	pdflatex -shell-escape $< $@

.PHONY : clean
clean :
	rm -f *.dat *.png *.aux *.log *.pdf *.py
