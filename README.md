This parametrized OpenSCAD model generates legs for a [Fellowes Standard Monitor Riser Graphite](https://www.fellowes.com/uk/en/catalog/workspace/ergonomic-accessories/details/monitor-stands/UK-9169301). They can be of any height and can optionally be combined with the original leg pieces.

#### Usage

Simply change `base_height` in `foot.scad` and run `make`.

You can also run openscad manually and override the `base_height` variable, without changing the source file:

```sh
openscad -D base_height=50 -o foot.stl foot.scad
```

#### Thingiverse

<https://www.thingiverse.com/thing:6482795>

#### GitHub

<https://github.com/nomike/Fellowes-Monitor-Stand-Legs>
