NAME:=resume
SUFFIX:=$(shell date +%F)
FILE:=$(NAME).tex


pdf: $(FILE)
	xelatex --jobname="resume-$(SUFFIX)" '\input{$(FILE)}'

sanitize:
	rm -f resume-$(SUFFIX).aux
	rm -f resume-$(SUFFIX).out
	rm -f resume-$(SUFFIX).log
	rm -rf auto/

clean:
	rm -f resume-$(SUFFIX).aux
	rm -f resume-$(SUFFIX).out
	rm -f resume-$(SUFFIX).log
	rm -f resume-$(SUFFIX).pdf
