thickness = 5.25;
width = 75;
center = 2*thickness;
edge = (width - center)/2;

module node() {
difference() {
	square([width,width]);
	translate([edge-thickness/2,width/4]) square([thickness,width*3/4]);
	translate([(edge+center)-(thickness/2),width/4]) square([thickness,width*3/4]);
	translate([0,edge-(thickness/2)])
		polygon([[0,0],[0,width/4+9],[width/4,thickness],[width/4,0]], convexity = 1);
	translate([width,edge+center-(thickness/2)])
		polygon([[0,0],[0,width/4+9],[-width/4,thickness],[-width/4,0]], convexity = 1);
}
}

node();
translate([0, width+5, 0])
    node();
translate([0, 2*(width+5), 0])
    node();

translate([width+5, 0, 0]) {
node();
translate([0, width+5, 0])
    node();
translate([0, 2*(width+5), 0])
    node();
}