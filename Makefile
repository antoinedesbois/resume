LATEXMK = latexmk
LATEXMK_FLAGS = -xelatex

.PHONY: all clean resume cover_letter

all: resume cover_letter

resume:
	$(LATEXMK) $(LATEXMK_FLAGS) resume_cv.tex

cover_letter:
	$(LATEXMK) $(LATEXMK_FLAGS) cover_letter.tex

clean:
	rm -rf build/
