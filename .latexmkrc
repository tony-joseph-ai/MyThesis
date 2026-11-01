# Build settings shared by GitHub Actions and local builds (run: latexmk)
@default_files = ('main.tex');
$pdf_mode = 1;          # pdfLaTeX, same engine as Overleaf
$bibtex_use = 2;        # run biber for biblatex
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
