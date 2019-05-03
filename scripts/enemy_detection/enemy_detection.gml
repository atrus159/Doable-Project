var sight_width = argument0;
var sight_height = argument1;

//these are the variables we need for the ractangles
var UpperLeftX = x - sight_width/2;
var UpperLeftY = y - sight_height/2;
var LowerRightX = x + sight_width/2;
var LowerRightY = y + sight_height/2;

//if the point is in the square, it will return true
if (point_in_rectangle(Player.x, Player.y, UpperLeftX, UpperLeftY, LowerRightX, LowerRightY)){
	return true;
}else{
	return false;
}

