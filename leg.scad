/* [height] */
base_height = 20;


/* [if you change any of these values, the legs might no longer fit] */
base_outer_diameter = 20.5;
base_inner_diameter = 18.6;

top_height = 18;
top_outer_diameter = 18.4;
top_inner_diameter = 16.3;


min_base_height = 18;

_total_height = base_height + top_height;

$fn = 64;

union() {
    difference() {
        cylinder(h = max(base_height, min_base_height), r = base_outer_diameter);
        cylinder(h = max(base_height, min_base_height), r = base_inner_diameter);
    }
    
    difference() {
        translate([0, 0, max(base_height, min_base_height) - 2]) cylinder(h = 2, r = base_inner_diameter);
        translate([0, 0, max(base_height, min_base_height) - 2]) cylinder(h = 2, r = top_inner_diameter);
    }
    
    translate([0, 0, max(base_height, min_base_height)]) difference() {
        cylinder(h = top_height, r = top_outer_diameter);
        cylinder(h = top_height, r = top_inner_diameter);
    }
    
}