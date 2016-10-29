all: build

build:
	./blog.sh

serve:
	python2 -m SimpleHTTPServer

clean:
	rm -f index.html about.html
	find ./ -mindepth 3 -name "*.html" -exec rm -f {} \;
