# Drew Yang's Github Page

![Release Resume](https://github.com/yambottle/me/actions/workflows/publish-pdf.yml/badge.svg)

## Intro
Made a Github Page repo in order to use one single data.yaml file to generate a printer-friendly resume in PDF as well as a personal website at the same time.


## Tutorial
- Set up Jekyll from [here](https://jekyllrb.com/docs/)
    - MacOS: 
        - Ruby has to be 3.1.X: 
            - `brew install ruby@3.1`
            - `echo 'export PATH="/usr/local/opt/ruby@3.1/bin:$PATH"' >> ~/.zshrc`
        - Get gem executable directory by `gem env`
            - `echo 'export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"' >> ~/.zshrc`
    - Ruby 3.0.0+: `bundle add webrick` + `bundle clean --force`
- Set up Prince from [here](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_generating_pdfs.html#1-set-up-prince)
- Set up Google Analytics [here](https://desiredpersona.com/google-analytics-jekyll/)
- Follow the project root directory `Makefile`


## Github Action
Github Action will be triggered by new tag, and the workflow will take the `~/resume/drewyang_dev_resume.pdf` as a release.
```
git tag vX.X.X
git push --tags
```
Referenced from: [HERE](https://github.com/actions/upload-release-asset)


## Some Research on Jekyll Exporting PDF
- Prince xml:
    - Since this use case is just exporting one pdf. Generally speaking, this works very well, but just can't work with bootstrap and fontawesome in PDF. Another down side is Prince xml free license will add a `P` logo at the file's top right corner, which is fine to me in this case.
    - Referenced from: [Jekyll Documentation Theme - Doc](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_generating_pdfs.html#5-customize-and-run-the-pdf-script) | [Jekyll Documentation Theme - Github](https://github.com/tomjoht/documentation-theme-jekyll)
- Pandoc: 
    - LaTeX Error: `pandoc -s http://127.0.0.1:4000/printer-friendly.html --pdf-engine pdflatex --toc --include-in-header=./_includes/latex_header.tex -V geometry:margin=1in -o pandoc_html_sample_layout.pdf`
    - Predefined-default layout: `pandoc -s http://127.0.0.1:4000/printer-friendly.html --pdf-engine pdflatex --toc  -V geometry:margin=1in -o pandoc_html_sample_layout.pdf`
    - Referenced from: [HERE](https://mattgilbertnet.github.io/colloidsorg/informatics/2014/08/03/markdown_latex_pdf.html)