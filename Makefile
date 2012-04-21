TEX_FILE := licencia.tex 




all: doc display

clean:
	rm *.pdf
doc:
	pdflatex $(TEX_FILE)

display:
	evince licencia.pdf

check:
	aspell -c -l es $(TEX_FILE)
