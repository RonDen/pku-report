JOB = main
LATEX = xelatex
BIBTEX = biber -l zh__pinyin --output-safechars
DVIPDF = dvipdfmx


# 如果使用latex编译，则使用divpdfmx将dvi转换成pdf
ifeq ($(LATEX), latex)
	DODVIPDF = $(DVIPDF) $(JOB)
endif

# 区分是windows还是linux
ifdef PATH
	MAKE = make
	RM = rm -f
else
	MAKE = mingw32-make
	RM = del
endif


doc:
	$(LATEX) $(JOB)
	# $(BIBTEX) $(JOB)
	$(LATEX) $(JOB)
	$(LATEX) $(JOB)
	$(DODVIPDF)

clean:
	$(RM) $(JOB).aux $(JOB).bbl $(JOB).bcf $(JOB).blg $(JOB).dvi \
		$(JOB).lof $(JOB).log $(JOB).lot $(JOB).run.xml $(JOB).toc \
		$(JOB).out $(JOB).out.bak missfont.log texput.log chap/*.aux

distclean: clean
	$(RM) $(JOB).pdf
