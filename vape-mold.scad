$fn=155;

module glass() {
   difference() {
      cylinder(h=30,d=13.00,center=true);
      cylinder(h=32,d=10.61,center=true);
   }
}

module sheath() {
   color("Red") difference() {
      cylinder(h=30,d=17.50,center=true);
      cylinder(h=32,d=13.02,center=true);
   }   
}

module displacer() {
      cylinder(h=32,d=13.02,center=true);
}

%glass();
difference() {
   translate([0,0,-2]) cube([25,20,32],center=true);
   translate([0,0,0]) sheath();
   translate([0,16,-2]) cube([27,32,35],center=true);
   translate([0,0,1]) cylinder(h=32,d=14,center=true);
   color("Green") translate([0,0,-2]) glass();
}

//color("Green") translate([0,0,0]) glass();