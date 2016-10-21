
step = 10;
r = 100;

for (a=[0:step:5000-step]) {
   hull() {
      translate([a/16, r*cos(a), r*sin(a)]) sphere(5);
      translate([(a+step)/16, r*cos(a+step), r*sin(a+step)]) sphere(5);
   }
}


