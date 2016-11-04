$fn=128;

module yinyang(color="Black") {
   color(color) linear_extrude(3) difference() {
   union() {
      translate([-5,0]) circle(5);

      difference() {
         circle(10);
         translate([-10,0]) square(20);
         translate([5,0,0]) circle(5);
         translate([5,0,0]) circle(5);
      }
   }
   translate([-5,0]) circle(2);
   }
}

rotate([0,0,180]) yinyang("Black");
yinyang("White");
