TEXFLAGS = -e '$$pdflatex=q/pdflatex %O %S/' -pdf
LATEXMK  = latexmk
RM       = rm -f
PKGNAME  = xcolor-solarized
PACKAGE  = $(PKGNAME).dtx \
           $(PKGNAME).ins \
           $(PKGNAME).pdf \
           README         \
           makefile

all: doc

doc: $(PKGNAME).pdf

$(PKGNAME).pdf: $(PKGNAME).sty \
                $(PKGNAME).dtx
	$(LATEXMK) $(TEXFLAGS) $(PKGNAME).dtx

$(PKGNAME).sty: $(PKGNAME).ins \
                $(PKGNAME).dtx
	latex $(PKGNAME).ins

dist: $(PACKAGE)
	$(RM) $(PKGNAME).zip
	zip $(PKGNAME).zip $(PACKAGE)

clean:
	$(RM) *.aux *.fdb_latexmk *.fls *.glo *.log *.out *.toc

cleanall: clean
	$(RM) $(PKGNAME).pdf $(PKGNAME).zip

.PHONY: all doc dist clean cleanall
