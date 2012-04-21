TEX_FILE := uno.tex 




all: doc display

clean:
	rm *.pdf
doc:
	pdflatex $(TEX_FILE)

display:
	evince uno.pdf

check:
	aspell -c -l es $(TEX_FILE)
