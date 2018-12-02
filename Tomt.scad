a = 500 * [[0,0],[0,5.2],[1.5,5.4],[6.5,-1.2]];

%polygon(a);

module mainbuilding() {
    difference() {
    color("gray") cube([1100,1200,600], center=false);
        translate([25,25,0]) cube([1050,1150,550], center=false);
        
        translate([-100,500,20]) cube([1400,200,200], center=false);

        
        translate([-100,100,320]) cube([1400,300,200], center=false);

        translate([-100,800,320]) cube([1400,300,200], center=false);

    }
}

module rentalunit() {
    difference() {
       color("darkgray") cube([800,700,300], center=false); 
      
        translate([25,25,0]) cube([750,650,250], center=false);
        
        translate([-100,400,20]) cube([1400,200,200], center=false);

        translate([-100,100,120]) cube([1400,200,100], center=false);
    }
}

module garage() {
    // 680 x 735 garasje.
    difference() {
     color("lightgray") cube([680,735,300], center=false);   

            translate([25,25,0]) cube([730,685,250], center=false);
    }

}

rotate([0,0,36.8]) union() { 
    translate([870,-400,0]) mainbuilding();
    
    translate([1150,810,0]) garage();

    translate([1170,-1110,0]) rentalunit();
    
    translate([1980,-50,0]) cube([250,100,100]);
}
    
