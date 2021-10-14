launch:
	jekyll build
	jekyll serve --config _config.yaml
build:
	jekyll build
pdf:
	bash ${PWD}/bin/pdf-product2.sh
clean:
	jekyll clean