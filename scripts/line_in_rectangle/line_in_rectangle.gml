var ax = argument0
var ay = argument1

var bx = argument2
var by = argument3

var cx = argument4
var cy = argument5

var dx = argument6
var dy = argument7
/*var n = 20
for(var i = 0; i<n; i++){
		var tempx = ax+(bx-ax)*(i+1)/n
		var tempy = ay+(by-ay)*(i+1)/n
		if(point_in_rectangle(tempx,tempy,cx,cy,dx,dy)){
		return true	
		}
}
return false*/

if(point_in_rectangle(ax,ay,cx,cy,dx,dy) || point_in_rectangle(bx,by,cx,cy,dx,dy)){
	return true	
}	
if(line_cross_line(ax,ay,bx,by,cx,cy,dx,cy)){
	return true		
}
if(line_cross_line(ax,ay,bx,by,cx,cy,cx,dy)){
	return true		
}
if(line_cross_line(ax,ay,bx,by,dx,dy,dx,cy)){
	return true		
}
if(line_cross_line(ax,ay,bx,by,dx,dy,cx,dy)){
	return true		
}
return false