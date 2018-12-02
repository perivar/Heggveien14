a = 500 * [[0,0],[0,5.2],[1.5,5.4],[6.5,-1.2]];

%polygon(a);

module mainbuilding() {
    difference() {
    color("gray") cube([800,2100,600], center=false);
        
        // terrece
      color("gray") translate([-5,-5,300]) cube([850,700,350], center=false); 

       // main unit cutout
        color("gray") translate([10,725,0]) cube([650,600,300], center=false); 


        // front cut off
       color("gray") translate([700,700,0]) cube([150,1400,300], center=false); 

       // garage
        color("gray") translate([10,1350,0]) cube([750,735,300], center=false); 

       // rental unit cutout
        color("gray") translate([25,25,-25]) cube([750,650,300], center=false); 

       // rental unit door
        color("gray") translate([-10,200,0]) cube([850,100,220], center=false); 

       // main door
        color("gray") translate([-10,800,0]) cube([850,100,220], center=false); 

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
    translate([1000,-800,0]) mainbuilding();
    
    translate([1980,-50,0]) cube([250,100,100]);
}
    
