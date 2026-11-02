DATE := $(shell date +%F)
BUILD := $(shell date +%s)
PANDOC=pandoc --toc -s --wrap=none --strip-comments -Vdate=$(DATE) -Vbuild=$(BUILD) --template=content/template.html

all: index.html es/index.html

clean:
	rm -f index.html es/index.html

ASSETS=src/index.css src/reset.css src/index.js
SOURCES=content/index.md content/index.es.md content/template.html $(ASSETS) files/Federico_OrtegaRiba_Resume.pdf Makefile

index.html: content/index.md $(SOURCES)
	$(PANDOC) -i $< -o $@

es/index.html: content/index.es.md $(SOURCES)
	@mkdir -p es
	$(PANDOC) -i $< -o $@

serve: all
	@echo "Serving site at http://127.0.0.1:8000"
	python3 -m http.server -b 127.0.0.1 8000

.PHONY: all clean serve
