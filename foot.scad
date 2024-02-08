$base_height = 20;

$base_outer_diameter = 20.5;
$base_inner_diameter = 18.6;

$top_height = 18;
$top_outer_diameter = 18.4;
$top_inner_diameter = 16.3;

$toal_height = $base_height + $top_height;

$min_base_height = 18;

if($base_height < $min_base_height) {
    $base_height = $min_base_height;
}


$fn = 64;

union() {
    difference() {
        cylinder(h = $base_height, r = $base_outer_diameter);
        cylinder(h = $base_height, r = $base_inner_diameter);
    }
    
    difference() {
        translate([0, 0, $base_height - 2]) cylinder(h = 2, r = $base_inner_diameter);
        translate([0, 0, $base_height - 2]) cylinder(h = 2, r = $top_inner_diameter);
    }
    
    translate([0, 0, $base_height]) difference() {
        cylinder(h = $top_height, r = $top_outer_diameter);
        cylinder(h = $top_height, r = $top_inner_diameter);
    }
    
}