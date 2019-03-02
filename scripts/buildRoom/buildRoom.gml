var startx = argument0
var starty = argument1
var buildString = argument2
var tempx = startx+32
var tempy = starty+32
for(var i = 0; i<string_length(buildString); i++){
	var block = string_char_at(buildString,i+1)
	switch(block){
		case "1":
			instance_create_depth(tempx,tempy,0,wall)
		break;
		case "9":
			tempy=starty-32
			tempx+=64
		break;
			
	}
	tempy+=64
}