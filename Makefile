# Local serve the website
launch:
	jekyll build
	jekyll serve --config _config.yaml
# Local build the website
build:
	jekyll build
# Generate pdf files
pdf:
	bash ${PWD}/bin/pdf-product2.sh
update:
	make pdf
	make launch
# Clean the build
clean:
	jekyll clean