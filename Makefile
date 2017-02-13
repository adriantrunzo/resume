COMPILER=pdflatex
TARGET=resume.latex

# defaults to an abridged version
default:
	$(COMPILER) $(TARGET)

unabridged:
	$(COMPILER) "\newcommand{\ifunabridged}{\iftrue} \input{$(TARGET)}"

clean:
	rm *.pdf; rm *.log; rm *.aux;
