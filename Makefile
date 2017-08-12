SINGLE = 6

default:
	pdflatex tahquitz

single:
	# change SINGLE above to the relevant page number
	pdfseparate -f $(SINGLE) -l $(SINGLE) tahquitz.pdf foo.pdf
	pdftoppm -r 300 foo.pdf z
	convert z-1.ppm topo.jpg
	rm -f foo.pdf z-1.ppm
	@echo "Output is in topo.jpg."

figures:
	# The following requires Inkscape 0.47 or later.
	# To force rendering of all figures, even if they seem up to date, do FORCE=1 make figures
	perl -e 'foreach my $$f(<figs/*.svg>) {system("scripts/render_one_figure.pl $$f $(FORCE)")}'

clean:
	rm -f *~ *.aux *.log *.idx *.toc *.ilg *.bak *.toc topo.jpg

