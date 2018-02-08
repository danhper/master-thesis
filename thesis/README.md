# thesis

LaTeX files for the thesis

## Build requirements

* xelatex (see [`thesissetup.sty`](./thesissetup.sty) for used packages)
* Consolas fonts
* Noto fonts

### ArchLinux

```
yaourt -S texlive-most noto-fonts consolas-font
```

## Building

The thesis can be built with `xelatex` using `latexmk`.

```
latexmk
```
