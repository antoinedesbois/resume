LATEXMK = latexmk
LATEXMK_FLAGS = -xelatex

.PHONY: all clean resume_nolink resume_external resume_google cover_letter

all: resume_nolink resume_external resume_google cover_letter

resume_nolink:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=resume_nolink resume_cv.tex

resume_external:
	$(LATEXMK) -xelatex="xelatex %O '\def\isenabledexternal{1} \input{%S}'" -jobname=resume_external resume_cv.tex

resume_google:
	$(LATEXMK) -xelatex="xelatex %O '\def\isenabledgoogle{1} \def\isenabledexternal{1} \input{%S}'" -jobname=resume_google resume_cv.tex

cover_letter:
	$(LATEXMK) $(LATEXMK_FLAGS) cover_letter.tex

clean:
	rm -rf build/
