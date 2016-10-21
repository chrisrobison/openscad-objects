


module ring(r=20) {
   difference() {
      circle(r,center=true);
      circle(r-2,center=true);
   }
}


module flower() {
   ring(20);

   for (a=[0:60:360]) {
      translate([20*cos(a),20*sin(a),0]) ring(20);
   }
}

flower();
translate([0,35,0]) flower();
translate([0,70,0]) flower();
translate([40,35,0]) flower();
translate([-40,35,0]) flower();
