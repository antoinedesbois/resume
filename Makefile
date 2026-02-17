LATEXMK = latexmk
LATEXMK_FLAGS = -xelatex

.PHONY: all clean resume cover_letter

all: resume resume_internal

resume:
	$(LATEXMK) $(LATEXMK_FLAGS) resume_cv.tex

resume_internal:
	$(LATEXMK) -xelatex="xelatex %O '\def\isinternal{1} \input{%S}'" -jobname=resume_internal resume_cv.tex

cover_letter:
	$(LATEXMK) $(LATEXMK_FLAGS) cover_letter.tex

clean:
	rm -rf build/
