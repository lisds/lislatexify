INPUT_FNAME=../quant1a-assessment-2/README.md
OUTPUT_PDF_ROOT=quant1a-assessment-2

$(OUTPUT_PDF_ROOT).pdf: out.tex
	pdflatex -jobname=$(OUTPUT_PDF_ROOT) pandoc_wrapper.tex

out.tex: $(INPUT_FNAME)
	pandoc $(INPUT_FNAME) -o out.tex

clean:
	rm -rf *.aux *.log *.out README.tex $(OUTPUT_PDF_ROOT).pdf
