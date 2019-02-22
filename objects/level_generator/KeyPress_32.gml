with(gen_room){
	if(type == 0){
		instance_destroy(self)	
	}
}
for(var i = 0; i<room_width; i+=64){
	for(var j = 0; j<room_width; j+=64){
		var create = true
		with(gen_room){
			if(point_in_rectangle(i,j,x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
				create = false
			}
		}
		with(gen_hallway){
			var hwidth = 128
			switch(type){
				case 0:
					if(point_distance(i,j,i,starty)<hwidth){
						if(is_between(i,startx,endx)){
							create = false	
						}
					}
				break;
				case 1:
					if(point_distance(i,j,startx,j)<hwidth){
						if(is_between(j,starty,endy)){
							create = false	
						}
					}
				break;
				case 2:
					if(point_distance(i,j,startx,j)<hwidth){
						if(is_between(j,starty,endy)){
							create = false	
						}
					}
					if(point_distance(i,j,i,endy)<hwidth){
						if(is_between(i,startx,endx)){
							create = false	
						}
					}
				break;
				case 3:
					if(point_distance(i,j,endx,j)<hwidth){
						if(is_between(j,endy,starty)){
							create = false	
						}
					}
					if(point_distance(i,j,i,starty)<hwidth){
						if(is_between(i,endx,startx)){
							create = false	
						}
					}
				break;
			}
		}
		if(create){
			instance_create_depth(i,j,0,wall)	
		}
	}
}
with(gen_room){
	instance_destroy(self)	
}
with(gen_hallway){
	instance_destroy(self)	
}