NAME:=resume
FILE:=$(NAME).tex


# Tectonic manages its own aux files in-memory and writes $(NAME).pdf
# directly, so there are no .aux/.out/.log files to clean up.
pdf: $(FILE)
	tectonic $(FILE)

clean:
	rm -f $(NAME).pdf
