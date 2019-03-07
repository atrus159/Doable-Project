var startx = argument0
var starty = argument1-32
var buildString = argument2
var tempx = startx
var tempy = starty
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
			instance_create_depth(tempx,tempy,0,wall)
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