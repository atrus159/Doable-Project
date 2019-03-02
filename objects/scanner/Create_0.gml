scan = ""
for(var i = 32; i<room_width; i+=64){
	for(var j = 32; j<room_height; j+=64){
		if(collision_point(i,j,wall,true,true)){
			scan +="1"	
		}else{
			scan += "0"
		}
	}
	scan += "9"
}
clipboard_set_text("\""+scan+"\"")