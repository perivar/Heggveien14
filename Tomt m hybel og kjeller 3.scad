a = [[0,0],[0,2600],[750,2700],[3250,-600]];

b = [[250,250],[250,2600-220],[750-100,2700-265],[2650,-250]];

%polygon(a);
color("black") polygon(b);

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


// spacer
module spacer() {
rotate([0,0,36.8]) {    
    translate([1980,-50,0]) cube([250,100,100]);
}
translate([0,1000,0]) cube([250,100,100]);

translate([500,2410,0]) 
rotate([0,0,98]) {    
cube([250,100,100]);
}

translate([1400,-0,0]) 
rotate([0,0,-100]) {    
cube([250,100,100]);
}

}

module firstfloor() {
// 700x800 block
color("gray") translate([100,300+500+wallthick,0]) cube([700+wallthick, 800+wallthick, 300]);

// 500x500 block
color("lightgray") translate([100+700+wallthick,300+500+wallthick,0]) cube([500+wallthick, 500+wallthick, 300]);

// 1100x500 block
color("darkgray") translate([100+700+wallthick,300,0]) cube([1100+wallthick, 500+wallthick, 300]);
}

module secondfloor() {
difference() {
    
    union() {
// 700x800 block
color("gray") translate([100,300+500+wallthick,300]) cube([700+wallthick, 800+wallthick, 300]);

// 500x500 block
color("lightgray") translate([100+700+wallthick,300+500+wallthick,300]) cube([500+wallthick, 500+wallthick, 300]);

// 1100x500 block
color("darkgray") translate([100+700+wallthick,300,300]) cube([1100+wallthick, 500+wallthick, 300]);
    }
    
// terrace cutout
color("lightgray") {
union() {
hull() {
translate([100-1,300-1,300]) cube([500+wallthick, 500+200+wallthick, 320]);    

translate([500-1,300-1,300]) cube([500+wallthick, 300+wallthick, 320]);    
}        
    }           
    }    
}
}


//alt1();
//spacer();

wallthick = 2*25;

rotate([0,0,-11]) {    
firstfloor();
translate([0,0,2]) secondfloor(); 
 
 // terrace
 difference() {
 color("darkgray") translate([100,300,300]) cube([900+wallthick, 500+wallthick, 20]);
    
    // terrace cutout 
    translate([100-1,300-1,300-10]) cube([450+wallthick, 250+wallthick, 50]);     
 }      
     
}