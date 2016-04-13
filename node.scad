thickness = 3.14;
width = 50;
center = 2*thickness;
edge = (width - center)/2;

difference() {
	square([width,width]);
	translate([edge-thickness/2,width/4]) square([thickness,width*3/4]);
	translate([(edge+center)-(thickness/2),width/4]) square([thickness,width*3/4]);
	translate([0,edge])
		polygon([[0,0],[0,width/4],[width/4,thickness],[width/4,0]], convexity = 1);
	translate([width,edge+center])
		polygon([[0,0],[0,width/4],[-width/4,thickness],[-width/4,0]], convexity = 1);
}
