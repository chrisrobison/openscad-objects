
$fn=155;

module wing() {
   linear_extrude(250, twist=30) hull() {
      square([35,2]);
      circle(r=5);
   }
}

module propeller() {
   translate([15,0,-10]) rotate([0,180,0]) wing();
   translate([-15,0,10]) wing();

   difference() {
      sphere(25);
      translate([-35,10,-35]) cube([70,25,70]);
      translate([-35,-35,-35]) cube([70,25,70]);
      rotate([90,0,0]) translate([0,0,-20]) cylinder(h=80,r=5);
   }
}

rotate([0,-$t*360,0]) propeller();
