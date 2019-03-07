with(argument0){
var a = point_in_rectangle(target.x,0,destination.x-destination.rwidth/2,0,destination.x+destination.rwidth/2,0)
var b = point_in_rectangle(destination.x,0,target.x-target.rwidth/2,0,target.x+target.rwidth/2,0)
var c = point_in_rectangle(target.y,0,destination.y-destination.rheight/2,0,destination.y+destination.rheight/2,0)
var d = point_in_rectangle(destination.y,0,target.y-target.rheight/2,0,target.y+target.rheight/2,0)

if(a || b){
	type = 1	
}else if(c || d){
	type = 0	
}else{
	var top = 0
	var bot = 0
	with(gen_room){
		if(type == 2 && id != other.target && id != other.destination){
			top+=1/distance_to_point(other.target.x,other.destination.y)
			bot+=1/distance_to_point(other.destination.x,other.target.y)
		}
	}
	if(top<bot){
		type = 2
	}else{
		type = 3	
	}
}


var startxedge
var startyedge
var endxedge
var endyedge
	if(target.x<destination.x){
		startxedge = target.x+target.rwidth/2
		endxedge = destination.x-destination.rwidth/2
	}else{
		startxedge = target.x-target.rwidth/2
		endxedge = destination.x+destination.rwidth/2
	}
	
	if(target.y<destination.y){
		startyedge = target.y+target.rheight/2
		endyedge = destination.y-destination.rheight/2
	}else{
		startyedge = target.y-target.rheight/2
		endyedge = destination.y+destination.rheight/2
	}
	
switch(type){
	case 0:
	startx = startxedge
	endx = endxedge
	starty = (startyedge+endyedge)/2
	endy = starty
	snapstartend()
	break;
	case 1:
	starty = startyedge
	endy = endyedge
	startx = (startxedge+endxedge)/2
	endx = startx
	snapstartend()
	break;
	case 2:
	startx = target.x
	starty = startyedge
	endx = endxedge
	endy = destination.y
	snapstartend() 
	break;
	case 3:
	startx = startxedge
	starty = target.y
	endx = destination.x
	endy = endyedge
	snapstartend()
	break;
	
}
}