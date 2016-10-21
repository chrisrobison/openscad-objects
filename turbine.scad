$fn=155;

module wing() {
   linear_extrude(250, twist=30) hull() {
      square([35,2]);
      circle(r=5);
   }
}

module propeller() {
   translate([0,0,-10]) rotate([0,180,180]) wing();
   translate([-15,0,10]) wing();

   difference() {
      sphere(25);
      translate([-35,10,-35]) cube([70,25,70]);
      translate([-35,-35,-35]) cube([70,25,70]);
      rotate([90,0,0]) translate([0,0,-20]) cylinder(h=80,r=5);
   }
}


module turbofan() {
   for (a=[0:10:180]) {
      translate([0,0,a/10]) rotate([90,90,a]) propeller();
   }
}

difference() {
   cylinder(h=75,r=260,center=true);
   translate([0,0,-1]) cylinder(h=120,r=255,center=true);
}

rotate([90,0,-$t*360]) propeller();
rotate([90,0,-$t*360]) rotate([0,90,0]) propeller();
//   turbofan();

