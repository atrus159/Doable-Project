var scan = ""
for(var i = 0; i<=room_width; i+=32){
	for(var j = 0; j<room_height; j+=32){
		var found = 0
		with(wall){
			if(x==i && y==j){
				scan +="w"	
				found =1
				j+=32
			}
		}
		
		if(!found){
			scan+="e"	
		}
	}
	scan += "n"
}


clipboard_set_text("\""+string_compress(scan,(room_height/32)-1)+"\"")