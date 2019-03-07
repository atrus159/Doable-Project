var old_string = argument0
var maxN = argument1
var currentChar = "|"
var counter = 0;
var start_index = 0
var new_string = ""
for(var i = 0; i<string_length(old_string);i++){
		if(string_char_at(old_string,i) == currentChar){
			counter ++
		}else{
			if(counter >1){
				if(counter >= maxN && currentChar == "e"){
					
				}else{
				new_string += ":"+string(counter+1)
				}
				
			}else if(counter ==1){
				new_string += currentChar	
			}
			counter = 0
			currentChar = string_char_at(old_string,i) 
			start_index = i
			new_string += string_char_at(old_string,i)
		}
}
return new_string