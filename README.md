# MyThesis

**Object to Image Ratio and Occlusion Sensitivity for Material Classification in a Learning Factory**
Master Thesis, Tony Joseph, Brandenburg University of Technology Cottbus-Senftenberg

📄 **Latest PDF:** [Releases → Latest thesis build](../../releases/tag/latest) (rebuilt automatically on every push to `main`)

## Repository layout

```
main.tex                 Preamble and document order
frontmatter/
  titlepage.tex          Title page (name, examiners, submission date)
  declaration.tex        Declaration of authorship and use of AI tools
  taskdescription.tex    Task description by the adviser
  abstract.tex           Abstract and Zusammenfassung
  abbreviations.tex      List of abbreviations
  notation.tex           Notation (symbols)
chapters/
  01_introduction.tex
  02_related_work.tex
  03_background.tex
  04_methodology.tex
  05_results.tex
  06_discussion.tex
figures/                 All images (\graphicspath points here)
  ch3_figures/           Figures for the Background chapter
references.bib           Bibliography (natbib, plainnat, author-year)
.latexmkrc               Build settings (pdfLaTeX + BibTeX)
.github/workflows/       GitHub Action that builds the PDF
```

Title-page details, the declaration, the abstracts and the lists before Chapter 1 are
separate files in `frontmatter/`.

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

Requires a TeX distribution (TeX Live / MiKTeX) with `latexmk` and `bibtex`:

```bash
latexmk          # builds main.pdf
latexmk -c       # removes auxiliary files
```

## Tips

- Add a new figure: put the file in `figures/` and use `\includegraphics{filename.png}`.
- Add a reference: paste the BibTeX entry into `references.bib`, cite with `\citet{key}` (in the sentence) or `\citep{key}` (in brackets).
- Every commit is a saved version; use the file's *History* view to compare or restore drafts.
