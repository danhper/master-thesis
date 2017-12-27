$ENV{'TEXINPUTS'} = './packages:' . ($ENV{'TEXINPUTS'} || '');

$pdf_mode = 1;
$pdflatex = 'xelatex --shell-escape --interaction=nonstopmode %O %S';
$out_dir = 'build';

@default_files = ('thesis.tex');
$clean_exts = 'synctex.gz';
