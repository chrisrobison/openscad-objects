

module stairs(num, rise, width, tread) {
   translate([0,tread,0]) rotate([32.5,0,0]) cube([width,sqrt(pow(tread*(num-1),2)+pow(rise*(num-1),2)),rise*.9]);
   for (a=[0:1:num-1]) {
      translate([0,a*tread,a*rise]) cube([width,tread,rise]);
   } 
}


stairs(5, 178, 914, 279);
translate([0,279*4,178*4]) cube([2000,1000,178]);

translate([2000,279*5,178*4]) rotate([0,0,180]) stairs(8,178,914,279);
