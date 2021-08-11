PUMLS := $(wildcard *.puml)
PNGS := $(addsuffix .png, $(basename $(PUMLS)))

all: png
.PHONY: all

png: $(PNGS)
.PHONY: png

%.png: %.puml
	plantuml $^
