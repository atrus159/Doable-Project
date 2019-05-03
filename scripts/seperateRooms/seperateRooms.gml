for(var i = 0; i<5; i++){
completed = false
while(!completed){
	completed = true
	with(gen_room){
		with(gen_room){	
			if(other.id != id){
				if(rectangle_in_rectangle(other.x-other.rwidth/2,other.y-other.rheight/2,other.x+other.rwidth/2,other.y+other.rheight/2,x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
					mp_linear_step(other.x,other.y,-64,false)
					level_generator.completed = false
					if(x<0 || x>room_width || y<0 || y>room_height){
						instance_destroy(self)	
					}
				}
			}
		}
	}
}


with(gen_room){
	move_snap(64,64)
	if(x>room_width || x<0 || y>room_height|| y<0){
		instance_destroy(self)
	}
}
}