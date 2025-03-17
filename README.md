This parametrized OpenSCAD model generates legs for a [Fellowes Standard Monitor Riser Graphite](https://www.fellowes.com/uk/en/catalog/workspace/ergonomic-accessories/details/monitor-stands/UK-9169301). They can be of any height and can optionally be combined with the original leg pieces.

#### Customizing

This design was done in OpenSCAD and can be customized.

Clone the repository using `git clone --recursive https://github.com/nomike/2D-Benchy`.
Be sure to use a [recent version of OpenSCAD](https://openscad.org/downloads.html#snapshots).

#### Usage

Simply change `base_height` in `foot.scad` and run `make`.

You can also run openscad manually and override the `base_height` variable, without changing the source file:

```sh
openscad -D base_height=50 -o foot.stl foot.scad
```

#### Thingiverse

<https://www.thingiverse.com/thing:6576962>

#### GitHub

<https://github.com/nomike/parametric-fellowes-monitor-stand-leg>
