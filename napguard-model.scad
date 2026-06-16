// NapGuard smart nap mask concept
// OpenSCAD prototype for basic CAD-style geometry exploration.
// Units are arbitrary millimeters for conceptual proportions.

$fn = 48;

module rounded_box(size=[10, 10, 4], radius=2) {
  hull() {
    for (x=[-size[0]/2 + radius, size[0]/2 - radius])
      for (y=[-size[1]/2 + radius, size[1]/2 - radius])
        translate([x, y, 0]) cylinder(h=size[2], r=radius, center=true);
  }
}

module mask_body() {
  difference() {
    union() {
      translate([-42, 0, 0]) scale([1.5, .82, .18]) sphere(r=31);
      translate([42, 0, 0]) scale([1.5, .82, .18]) sphere(r=31);
      translate([0, 5, 0]) scale([1.1, .7, .16]) sphere(r=28);
    }
    translate([0, -24, 0]) scale([.72, .46, .3]) sphere(r=24);
    translate([-42, -2, 7]) scale([1.15, .62, .2]) sphere(r=23);
    translate([42, -2, 7]) scale([1.15, .62, .2]) sphere(r=23);
  }
}

module inner_cushion() {
  color("#cfc3b4") {
    translate([-34, -7, 8]) scale([1.2, .62, .14]) sphere(r=22);
    translate([34, -7, 8]) scale([1.2, .62, .14]) sphere(r=22);
    translate([0, -24, 8]) scale([.8, .32, .12]) sphere(r=18);
  }
}

module eeg_pads() {
  color("#1f8f8a") {
    translate([-47, 21, 10]) rotate([0, 0, -8]) rounded_box([17, 5, 2], 2.5);
    translate([-17, 25, 10]) rotate([0, 0, -3]) rounded_box([17, 5, 2], 2.5);
    translate([17, 25, 10]) rotate([0, 0, 3]) rounded_box([17, 5, 2], 2.5);
    translate([47, 21, 10]) rotate([0, 0, 8]) rounded_box([17, 5, 2], 2.5);
  }
}

module eog_zones() {
  color("#de6b52") {
    translate([-67, -8, 10]) scale([.72, 1.08, .12]) sphere(r=12);
    translate([67, -8, 10]) scale([.72, 1.08, .12]) sphere(r=12);
  }
}

module electronics_module() {
  color("#c79a3b") translate([0, 31, 14]) rounded_box([30, 16, 7], 4);
  color("#171717") translate([-7, 36, 18]) cylinder(h=2, r=4, center=true);
  color("#9ad7cd") translate([8, 36, 18]) sphere(r=2.2);
  color("#6e6258") translate([29, 24, 14]) rounded_box([22, 7, 4], 3);
  color("#8e79d8") translate([-33, -33, 12]) rotate([0, 90, 0]) cylinder(h=18, r=4, center=true);
  color("#171717") translate([76, 5, 12]) rounded_box([14, 5, 3], 1.6);
}

module strap() {
  color("#35312d") {
    translate([-103, 1, -2]) rotate([0, 4, 6]) rounded_box([58, 10, 5], 5);
    translate([103, 1, -2]) rotate([0, -4, -6]) rounded_box([58, 10, 5], 5);
  }
}

module ventilation_slots() {
  color("#9d8f7c") {
    for (i=[-3:3]) {
      translate([i * 16, -39 + abs(i) * 1.2, 12])
        rotate([0, 0, i * 2])
        rounded_box([10, 2, 2], 1);
    }
  }
}

module callout_pin(position=[0,0,0], label="") {
  color("#171717") translate(position) cylinder(h=10, r=.9, center=false);
}

color("#302c28") mask_body();
inner_cushion();
strap();
eeg_pads();
eog_zones();
electronics_module();
ventilation_slots();

// Label pins for quick orientation in OpenSCAD preview.
callout_pin([-47, 21, 12], "EEG");
callout_pin([67, -8, 12], "EOG");
callout_pin([0, 31, 18], "Module");
callout_pin([76, 5, 14], "Port");
callout_pin([-33, -33, 14], "Haptic");
