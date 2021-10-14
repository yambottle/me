#!/bin/bash
echo "Building PDF-friendly HTML site for Product2 ...";
# bundle exec jekyll serve --detach --config _config.yaml,pdfconfigs/config_product2_pdf.yaml;
bundle exec jekyll serve --detach --config ${PWD}/_config.yaml;
echo "done";

echo "Building the PDF ...";
prince --javascript --input-list=${PWD}/_site/pdfconfigs/prince-list.txt -o ${PWD}/resume/drewyang_dev_resume.pdf;
echo "done";

echo 'Killing all Jekyll instances'
kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
echo "done";