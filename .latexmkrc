# Configuracion de latexmk. Con este archivo en el directorio alcanza con
# correr  latexmk  a secas: usa pdflatex, llama a biber cuando hace falta y
# deja TODO lo generado en build/, incluido el PDF.
#
#   latexmk           compila
#   latexmk -pvc      recompila solo al guardar
#   latexmk -c        borra los auxiliares y deja el PDF
#   latexmk -C        borra tambien el PDF

# Sin esto, latexmk a secas intentaria compilar TODOS los .tex del
# directorio, incluidos los fragmentos que se cargan con \input.
@default_files = ('main.tex');

$pdf_mode   = 1;         # 1 = pdflatex (el template usa \usepackage{times})
$out_dir    = 'build';
$bibtex_use = 2;         # corre biber y borra sus auxiliares al limpiar
