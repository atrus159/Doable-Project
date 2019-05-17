var startx = argument0
var starty = argument1-32
var buildString = argument2
var tempx = startx
var tempy = starty
var noncritical = argument3
for(var i = 0; i<string_length(buildString); i++){
	var block = string_char_at(buildString,i+1)
	var n = 1
	if(string_char_at(buildString,i+2) == ":"){
		n = real(string_digits(string_copy(buildString,i+3,3)))
		i+=1+string_length(string_digits(string_copy(buildString,i+3,3)))
	}
	for(var j = 0; j<n; j++){
	switch(block){
		case "w":
			if(noncritical){
			instance_create_depth(tempx,tempy,0,noncritical_wall)
			}else{
			instance_create_depth(tempx,tempy,0,wall)
			}
			tempy+=32
		break;
		case "l":
			if(noncritical){
			instance_create_depth(tempx,tempy,0,nc_wall_left)
			}else{
			instance_create_depth(tempx,tempy,0,wall_left)
			}
			tempy+=32
		break;
		case "r":
			if(noncritical){
			instance_create_depth(tempx,tempy,0,nc_wall_right)
			}else{
			instance_create_depth(tempx,tempy,0,wall_right)
			}
			tempy+=32
		break;
		case "t":
			if(noncritical){
			instance_create_depth(tempx,tempy,0,nc_wall_top)
			}else{
			instance_create_depth(tempx,tempy,0,wall_top)
			}
			tempy+=32
		break;
		case "b":
			if(noncritical){
			instance_create_depth(tempx,tempy,0,nc_wall_bot)
			}else{
			instance_create_depth(tempx,tempy,0,wall_bot)
			}
			tempy+=32
		break;
		case "n":
			tempy=starty
			tempx+=32
		break;
			
	}
	tempy+=32
	}
}