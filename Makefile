.PHONY: all	clean publish

all: leg.stl

clean:
	rm -f leg.stl

leg.stl: leg.scad
	openscad -o leg.stl leg.scad

publish: leg.stl
	thingiverse-publisher


