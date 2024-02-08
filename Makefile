.PHONY: all	clean

all: foot.stl

clean:
	rm -f foot.stl

foot.stl: foot.scad
	openscad -o foot.stl foot.scad


