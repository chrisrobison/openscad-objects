$fn=128;


spacing=100;
columns=8;
stairs=10;
stairHeight=8;
stairDepth=16;

roof();
columns();
stairs();

module column(r=15,h=200) {

      color("Silver") translate([0,0,(h/42)*2]) union() {
      linear_extrude(200,scale=.8) difference() {
         circle(r=r,center=true);

         for (a=[0:8:360]) {
            translate([r*cos(a),r*sin(a),0]) circle(r=2,center=true);
         }
      }
      
      translate([0,0,h]) union() {
         cylinder(h=h/42,r1=r*.8,r2=(r*.8)+4,center=true);
         translate([0,0,h/42]) cylinder(h=h/42,r=(r*.8)+4,center=true);
      }
      translate([0,0,-(h/42)+3]) union() {
         cylinder(h=h/42,r1=r+2,r2=r-2,center=true);
         translate([0,0,-h/42]) cylinder(h=h/42,r=r+2,center=true);
      }
   }
}

module roofShape() {
   rotate([90,0,0]) linear_extrude((columns*spacing)+(spacing)) 
         polygon([[-((columns*spacing)/2)-(spacing/2),0],[((columns*spacing)/2)+(spacing/2),0],[0,120]]);
}

module roof() {
   difference() {
      union() {
         color("Silver") translate([((columns*spacing)/2)+(spacing/2),(columns*spacing)+(spacing),225]) roofShape();
         color("Silver") translate([0,((columns*spacing)/2)+(spacing/2),225]) rotate([0,0,90]) roofShape();
      }
      translate([((columns*spacing)/2)+(spacing/2),(columns*spacing)+(spacing)+10,224]) scale([.8,2,.8]) roofShape();
      translate([-10,((columns*spacing)/2)+(spacing/2),224]) rotate([0,0,90]) scale([.8,2,.8]) roofShape();
   }
   translate([((columns*spacing)+spacing)/2,((columns*spacing)+spacing)/2,215]) cube([((columns*spacing)+spacing),(columns*spacing)+spacing,20],center=true);
}

module column2() {
   translate([0,0,100]) scale([1,1,4]) hull() {
      cylinder(h=50,r=12,center=true);
      sphere(r=14,center=true);
   }
}

module stairs() {
   color("Silver") {
      for (s=[0:stairs]) {
         translate([((columns*spacing)/2)+(spacing/2),((columns*spacing)/2)+(spacing/2),-s*stairHeight]) cube([(columns*spacing)+(s*stairDepth)+spacing/2,(columns*spacing)+(s*stairDepth)+spacing/2,stairHeight],center=true);
      }
   }
}

module columns() {
   for (x=[0:columns]) {
      translate([(x*spacing)+50,50,0]) column();
      translate([50,(x*spacing)+50,0]) column();
      translate([(columns*spacing)+50,(x*spacing)+50,0]) column();
      translate([(spacing*x)+50,(columns*spacing)+50,0]) column();
   }
}

