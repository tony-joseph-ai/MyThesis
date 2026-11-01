# MyThesis

**Object to Image Ratio and Occlusion Sensitivity for Material Classification in a Learning Factory**
Master Thesis, Tony Joseph, Brandenburg University of Technology Cottbus-Senftenberg

📄 **Latest PDF:** [Releases → Latest thesis build](../../releases/tag/latest) (rebuilt automatically on every push to `main`)

## Repository layout

```
main.tex                 Preamble, title page details, declaration, abstract, chapter list
chapters/
  01_introduction.tex
  02_related_work.tex
  03_background.tex
  04_methodology.tex
  05_results.tex
  06_discussion.tex
figures/                 All images (\graphicspath points here)
  ch3_figures/           Figures for the Background chapter
Sources.bib              Bibliography (biblatex + biber)
.latexmkrc               Build settings (pdfLaTeX + biber)
.github/workflows/       GitHub Action that builds the PDF
```

Title-page details (name, reviewers, submission date), the abstracts and the
generative-AI declaration are set near the top of `main.tex`.

## Writing workflow

1. **Edit** a chapter file in one of these ways:
   - on github.com: open the file and click the ✏️ pencil;
   - in the browser editor: press `.` on the repo page (opens github.dev);
   - locally in VS Code with the *LaTeX Workshop* extension (live PDF preview on save).
2. **Commit** with a short message, e.g. `Results: add aluminium discussion`.
3. **Get the PDF**: GitHub Actions compiles it in ~2 minutes.
   Download it from the **latest** release, or from the *Actions* tab → the run → *Artifacts*.
   A red ✗ on the commit means the build failed; open the run to see the LaTeX error.

## Building locally (optional)

Requires a TeX distribution (TeX Live / MiKTeX) with `latexmk` and `biber`:

```bash
latexmk          # builds main.pdf
latexmk -c       # removes auxiliary files
```

## Tips

- Add a new figure: put the file in `figures/` and use `\includegraphics{filename.png}`.
- Add a reference: paste the BibTeX entry into `Sources.bib`, cite with `\cite{key}`.
- Every commit is a saved version; use the file's *History* view to compare or restore drafts.
