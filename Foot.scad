$base_heigth = 20;

$base_outer_diameter = 20.5;
$base_inner_diameter = 18.6;

$top_heigth = 18;
$top_outer_diameter = 18.4;
$top_inner_diameter = 16.3;

$toal_heigth = $base_heigth + $top_heigth;

$min_base_heigth = 18;

if($base_heigth < $min_base_heigth) {
    $base_heigth = $min_base_heigth;
}


$fn = 64;

union() {
    difference() {
        cylinder(h = $base_heigth, r = $base_outer_diameter);
        cylinder(h = $base_heigth, r = $base_inner_diameter);
    }
    
    difference() {
        translate([0, 0, $base_heigth - 2]) cylinder(h = 2, r = $base_inner_diameter);
        translate([0, 0, $base_heigth - 2]) cylinder(h = 2, r = $top_inner_diameter);
    }
    
    translate([0, 0, $base_heigth]) difference() {
        cylinder(h = $top_heigth, r = $top_outer_diameter);
        cylinder(h = $top_heigth, r = $top_inner_diameter);
    }
    
}