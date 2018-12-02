a = 500 * [[0,0],[0,5.2],[1.5,5.4],[6.5,-1.2]];

%polygon(a);

module topfloor() {
    
    color("gray") translate([0,0,300]) cube([850, 1300, 300]);
}

module firstfloor() {
    
    color("gray") translate([0,0,000]) cube([850, 2000, 300]);
}

module alt1() {

rotate([0,0,36.8]) { 
    
    translate([1120,-200,0]) topfloor();
    translate([1120,-900,0]) firstfloor();
    
    translate([1980,-50,0]) cube([250,100,100]);
}
}

module alt2() {

rotate([0,0,0]) { 
    
    translate([300,1000,000]) color("gray") cube([850, 850, 300]);

    translate([950,150,000]) color("lightgray") cube([850, 850, 300]);

    translate([300,1000,300]) color("gray") cube([850, 850, 300]);

    translate([950,580,300]) color("lightgray") cube([850, 425, 300]);

rotate([0,0,36.8]) { 
    translate([1980,-50,0]) cube([250,100,100]);
}
}
}


module alt3() {

rotate([0,0,0]) { 

color("gray") difference() {    
     hull() {
    translate([300,1000,000]) cube([850, 850, 300]);

    translate([950,150,000]) cube([850, 850, 300]);

    translate([300,1000,300]) color("gray") cube([850, 850, 300]);

    translate([950,150,300]) cube([850, 850, 300]);
}

    translate([1060,145,305]) cube([750, 750, 300]);

}


rotate([0,0,36.8]) { 
    translate([1980,-50,0]) cube([250,100,100]);
}
}
}

module original() {
    rotate([0,0,-10]) { translate([250,700,000]) color("gray") cube([1300, 500, 300]);
    }
}

alt3();