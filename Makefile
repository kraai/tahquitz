default:
	#

figures:
	# The following requires Inkscape 0.47 or later.
	# To force rendering of all figures, even if they seem up to date, do FORCE=1 make interior_figures
	perl -e 'foreach my $$f(<*/*/figs/*.svg>) {system("scripts/render_one_figure.pl $$f $(FORCE)")}'
	perl -e 'foreach my $$f(<share/misc/arrows/*.svg>) {system("scripts/render_one_figure.pl $$f $(FORCE)")}'
	# For better reliability in RIP, make png versions as well.
	perl -e 'foreach my $$f(<*/*/figs/*.pdf>) {system("scripts/pdf_to_bitmap.pl $$f png $(FORCE)")}'
	perl -e 'foreach my $$f(<share/misc/arrows/*.pdf>) {system("scripts/pdf_to_bitmap.pl $$f png $(FORCE)")}'
