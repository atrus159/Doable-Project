var ax = argument0
var ay = argument1
var bx = argument2
var by = argument3
var cx = argument4
var cy = argument5
var dx = argument6
var dy = argument7


var mOne = (by-ay)/(bx-ax)
var mTwo = (dy-cy)/(dx-cx)
var bOne = -mOne*ax+ay
var bTwo = -mTwo*cx+cy

if(ax == bx){
	var intersect = mTwo*ax+bTwo
	if(is_between(intersect,ay,by) && is_between(ax,cx,dx)){
		return true	
	}
}else if(cx == dx){
	var intersect = mOne*cx+bOne
	if(is_between(intersect,cy,dy) && is_between(cx,ax,bx)){
		return true	
	}	
}

if(mOne == mTwo){
	if(bOne ==bTwo){
		return true	
	}else{
		return false	
	}
}

var intersectX = (bTwo-bOne)/(mOne-mTwo)
var intersectY = (mOne*bTwo-bOne*mTwo)/(mOne-mTwo)

if(is_between(intersectX, ax, bx) && is_between(intersectX, cx,dx)){
	return true	
}
return false