
module pyramid(size=10) {
   linear_extrude(size,scale=0) square(size,center=true);
}

module hollow() {
   difference() {
      pyramid(10);
      translate([-1,0,1]) pyramid(8);
      translate([1,0,1]) pyramid(8);
      translate([0,-1,1]) pyramid(8);
      translate([0,1,1]) pyramid(8);
      translate([0,0,-1]) pyramid(8);
      translate([0,0,1]) pyramid(8);
      translate([0,0,-.5]) cube([12,12,2],center=true);
      translate([0,0,0]) cube([8,8,2.5],center=true);
   }
}

hollow();
//translate([0,0,7]) rotate([0,180,0]) hollow();

