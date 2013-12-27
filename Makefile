# Makefile for vx-ubiquity-slideshow

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_vitalinux translations

build_init:
	mkdir -p $(BUILD)

build_vitalinux: build_init
	cp -rL $(SOURCESLIDES)/vitalinux $(BUILD)

translations:
	./generate-local-slides.sh vitalinux

.PHONY : clean

clean:
	-rm -rf $(BUILD)
