# Drew Yang's Github Page

## Intro
Made a Github Page repo in order to use one single data.yaml file to generate a printer-friendly resume in PDF as well as a personal website at the same time.

## Tutorial
TODO - Will be documented when finished!

## Some Research on Jekyll Exporting PDF
- Prince xml:
    - Since this use case is just exporting one pdf. Generally this works very well, but just can't work with bootstrap and fontawesome. Another down side is Prince xml free license will add a `P` logo at the file's top right corner, which is fine to me in this case.
    - Referenced from: [Jekyll Documentation Theme - Doc](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_generating_pdfs.html#5-customize-and-run-the-pdf-script) | [Jekyll Documentation Theme - Github](https://github.com/tomjoht/documentation-theme-jekyll)
- Pandoc: 
    - LaTeX Error: `pandoc -s http://127.0.0.1:4000/printer-friendly.html --pdf-engine pdflatex --toc --include-in-header=./_includes/latex_header.tex -V geometry:margin=1in -o pandoc_html_sample_layout.pdf`
    - Predefined-default layout: `pandoc -s http://127.0.0.1:4000/printer-friendly.html --pdf-engine pdflatex --toc  -V geometry:margin=1in -o pandoc_html_sample_layout.pdf`
    - Referenced from: [HERE](https://mattgilbertnet.github.io/colloidsorg/informatics/2014/08/03/markdown_latex_pdf.html)