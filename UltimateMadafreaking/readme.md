# Ultimate Madafreaking Formulary 

This folder collects lecture notes, LaTeX sources, figures and small scripts for multiple engineering/math subjects (calculus, circuits, control, signals, etc.). The files are intended for personal study, quick examples and building small PDFs from the included LaTeX sources.

This formulary is done for **Electronic Engineering** and related subjects, but it can be useful for other fields as well.

Contents overview

- `confi.tex` — local LaTeX configuration used by the documents.
- `0prompt.md` — project prompt / notes.
- `FM1_Math.tex`, `FM2_Control.tex`, `FM3_Physics.tex`, `FM4_Circuits.tex`, `FM5_Relleno.tex` — main LaTeX chapters / notes.
- `Formulario.tex` — formula sheet / compact reference.
- `src/` — supporting source files (subfolders for `FM2`, `FM4`).
- `scripts/` — small utilities and notebooks (e.g., `bode.ipynb`, `rbg.sh`).
- `.vscode/` — workspace settings used for editing.

## Quick build (LaTeX)

1. Install a TeX distribution (TeX Live or MiKTeX) and `latexmk` or `pdflatex`.
2. From this folder, compile a main file, for example:

```bash
latexmk -pdf FM1_Math.tex
```

Or, if `latexmk` is not available:

```bash
pdflatex FM1_Math.tex
bibtex FM1_Math
pdflatex FM1_Math.tex
pdflatex FM1_Math.tex
```

## Notes and recommendations

- Many figures are raster images included in the notes. For final publication prefer vector formats (PDF, SVG) where possible.
- The `scripts/bode.ipynb` notebook can be opened with Jupyter to reproduce Bode diagrams and plots used in the notes.
- The `.vscode/settings.json` contains editor preferences which are personal — adapt them if you share this repository.

## Contributing / workflow

- These files are primarily personal study notes. If you want to extract a single chapter into a standalone PDF, copy its preamble or use `confi.tex` as a shared configuration.
- To add figures, place them in a new `fig/` folder and reference them from the LaTeX sources using relative paths.

## Contact / attribution

This folder is a private collection of lecture notes and didactic material. If you reuse material from here, attribute appropriately.

