var scan = ""
for(var i = 0; i<=room_width; i+=32){
	for(var j = 0; j<room_height; j+=32){
		var found = 0
		if(!found){
			with(wall_top){
				if(x==i && y==j){
					scan +="t"	
					found =1
					j+=32
				}
			}
		}
		if(!found){
			with(wall_bot){
				if(x==i && y==j){
					scan +="b"	
					found =1
					j+=32
				}
			}
		}
		if(!found){
			with(wall_left){
				if(x==i && y==j){
					scan +="l"	
					found =1
					j+=32
				}
			}
		}
		if(!found){
			with(wall_right){
				if(x==i && y==j){
					scan +="r"	
					found =1
					j+=32
				}
			}
		}
		if(!found){
			with(wall){
				if(x==i && y==j){
					scan +="w"	
					found =1
					j+=32
				}
			}
		}
		
		if(!found){
			scan+="e"	
		}
	}
	scan += "n"
}


clipboard_set_text("\""+string_compress(scan,(room_height/32)-1)+"\"")