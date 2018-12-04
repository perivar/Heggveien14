a = [[0,0],[0,2600],[750,2700],[3250,-600]];

b = [[250,250],[250,2600-220],[750-100,2700-265],[2650,-250]];

%polygon(a);
color("black") polygon(b);

// cube with hole like wall
module walls(color, x, y, z, a, b, h) {

difference() {
color(color) translate([x,y,z]) cube([a+wallthick, b+wallthick, h]);

color("white") translate([x+wallthick,y+wallthick,z]) cube([a-wallthick, b-wallthick, h-wallthick]);
    } 
}

wallthick = 2*25;

module topfloor() {
    
    difference() {
    walls("gray", 100,-30,300,700,1300,300);
    
    // windows
 //translate([750,100,400]) cube([3*wallthick, 400, 150]);
 //translate([750,800,400]) cube([3*wallthick, 400, 150]);

    // windows
 //translate([wallthick,100,400]) cube([3*wallthick, 400, 150]);
 //translate([wallthick,800,400]) cube([3*wallthick, 400, 150]);

    }
        
    //color("gray") translate([100,-30,300]) cube([700+wallthick, 1300+wallthick, 300]);
}

module bottomfloor() {

    color("darkgray")   
    difference() {
    hull() {
     //translate([100,-30,000]) cube([700+wallthick, 1700+wallthick, 300]);
    
    walls("gray", 100,-30,0,700,1700,300);        
     //translate([-300-wallthick+90,350,0]) cube([300+wallthick, 1000+wallthick, 300]);

    walls("gray", -300-wallthick+90,350,0,300,1000,300);
    }
    
        // windows
    }
}

module alt1() {

rotate([0,0,36.8]) { 
    
    translate([1130,-500,1]) topfloor();
    translate([1130,-900,0]) bottomfloor();    
    
    translate([1180,830,0]) garage();
}
}

module alt2() {

rotate([0,0,0]) { 
    
    translate([250,1000,000]) color("gray") cube([800+wallthick, 800+wallthick, 300]);

    translate([850,150,000]) color("lightgray") cube([800+wallthick, 800+wallthick, 300]);

    translate([250,1000,300]) color("gray") cube([800+wallthick, 800+wallthick, 300]);

    translate([850,550,300]) color("lightgray") cube([800+wallthick, 400+wallthick, 300]);

rotate([0,0,36.8]) { 
    translate([1980,-50,0]) cube([250,100,100]);
}
}

translate([000,1850,0]) garage();

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

startx=90;
starty=290;

module firstfloor() {
    
// 700x800 block = 56
difference() {    
walls("gray", startx, starty+500+wallthick, 0, 700, 800, 300);

color("white") translate([startx-wallthick, starty+600, 100]) cube([wallthick*3, 500, 100]);
    
color("white") translate([500, 700+wallthick, 0]) cube([200, wallthick*3, 100]);    
    
color("white") translate([500, 1600+wallthick, 100]) cube([200, wallthick*3, 100]);        
}

// 500x500 block = 25
difference() {    
walls("lightgray", startx+700+wallthick,starty+500+wallthick, 0, 500, 500, 300);
    
    // window
    color("white") translate([startx+1200+wallthick, 1000+wallthick, 100]) cube([wallthick*3, 200, 100]);    
    
    // door
    color("white") translate([startx+800+wallthick, 1300+wallthick, 0]) cube([150, wallthick*3, 200]);        
}    
    
// 1100x500 block = 55
difference() {
walls("darkgray", startx+700+wallthick,starty, 0, 1100, 500, 300); 

// window end    
color("white") translate([startx+1800, 400, 100]) cube([wallthick*3, 300, 100]);            
// door side
color("white") translate([startx+1600, 700+wallthick, 0]) cube([150, wallthick*3, 200]);                    
// large window
color("white") translate([startx+1000, 250, 200]) cube([800, wallthick*3, 50]);    

color("white") translate([startx+700, 400, 200]) cube([wallthick*3, 300, 50]);
    
}
    
}

module secondfloor() {
difference() {
union() {
    
// 700x800 block
difference() {
walls("gray", startx, starty+500+wallthick, 300, 700, 800, 300);

color("white") translate([500, 1500+wallthick, 400]) cube([200, wallthick*3, 100]);            
    
color("white") translate([wallthick, 1100+wallthick, 400]) cube([wallthick*3, 300, 100]);                
}

        
// 500x500 block
    difference() {
walls("lightgray", startx+700+wallthick,starty+500+wallthick, 300, 500, 500, 300);    

    color("white") translate([startx+1200+wallthick, 1000+wallthick, 400]) cube([wallthick*3, 200, 100]);

    // kitchen window
    color("white") translate([startx+800+wallthick, 1300+wallthick, 400]) cube([300, wallthick*3, 50]);        
}
    
// 1100x500 block
difference() {        
walls("darkgray", startx+700+wallthick,starty, 300, 1100, 500, 300);

// large window
color("white") translate([startx+1000, 250, starty+50]) cube([600, wallthick*3, 200]);    

// window    
color("white") translate([startx+1800, 400, starty+200]) cube([wallthick*3, 300, 50]);    

// window up
color("white") translate([startx+1500, 700+wallthick, 500]) cube([300, wallthick*3, 50]);    
}
}
    
// terrace cutout
color("white") {
  union() {
    hull() {
translate([startx-1,starty-1,300]) cube([500+wallthick, 500+200+wallthick, 320]);    

translate([startx+400-1,starty-1,300]) cube([500+wallthick, 300+wallthick, 320]);    
    }        
  }           
}    

}
}

module garage() {
    // 680 x 735 garasje.
    difference() {
     color("lightgray") cube([680,735,300], center=false);   

    color("white") translate([25,25,0]) cube([730,685,250], center=false);
    }
}

module alt4() {
rotate([0,0,-11.5]) {    
firstfloor();
translate([0,0,2]) secondfloor(); 
 
 // terrace
 difference() {
 color("white") translate([startx,starty,300]) cube([900+wallthick, 500+wallthick, 20]);
    
    // terrace cutout 
    color("white") translate([startx-1,starty-1,300-10]) cube([450+wallthick, 250+wallthick, 50]);     
 }      
     
}

translate([0,1645,0]) garage();
}

alt1();
//spacer();
