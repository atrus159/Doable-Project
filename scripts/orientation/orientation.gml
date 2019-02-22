var ax = argument0
var ay = argument1
var bx = argument2
var by = argument3
var cx = argument4
var cy = argument5

var val = (by-ay)*(cx-bx)-(bx-ax)*(cy-by)
if(val == 0){
	return 0	
}
if(val>0){
	return 1	
}
return 2