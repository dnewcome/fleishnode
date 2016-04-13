// material thickness
thickness = 5.25;

// overall size
width = 100;

// distance between parallel pieces
center = 20;


module node() {
    edge = (width - center)/2;
	difference() {
		square([width,width]);

		// two narrow notches running the center of each piece
		translate([edge-thickness/2,width/4]) square([thickness,width*3/4]);
		translate([(edge+center)-(thickness/2),width/4]) square([thickness,width*3/4]);

		// two angled notches in the sides that allow the pieces to slide together	
		translate([0,edge-(thickness/2)])
			polygon([[0,0],[0,width/4+9],[width/4,thickness],[width/4,0]], convexity = 1);
		translate([width,edge+center-(thickness/2)])
			polygon([[0,0],[0,width/4+9],[-width/4,thickness],[-width/4,0]], convexity = 1);
	}
}

// six total pieces are required to construct the node assembly
node();
translate([0, width+5])
    node();
translate([0, 2*(width+5)])
    node();

translate([width+5, 0]) {
    node();
    translate([0, width+5])
        node();
    translate([0, 2*(width+5)])
        node();
}
