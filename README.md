# Resume & Cover Letter Compilation

This project uses **XeLaTeX** and `latexmk` for compilation.

## Prerequisites

Ensure you have the following installed:
- `texlive-full` (or a distribution with `xelatex` and `latexmk`)
- `make`
- `zathura` (optional, for viewing PDFs)

## Compilation

You can compile using `make`.

### Using Make

To compile both resume and cover letter:
```bash
make
```

To compile only the resume:
```bash
make resume
```

To compile only the cover letter:
```bash
make cover_letter
```

All build artifacts (PDFs, logs, etc.) are generated in the `build/` directory.

## Cleaning

To clean build artifacts:
```bash
make clean
```
