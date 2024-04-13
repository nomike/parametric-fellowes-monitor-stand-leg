/*
Parametric Fellowes Monitor Stand Leg

Copyright 2024 nomike[AT]nomike[DOT]com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/

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