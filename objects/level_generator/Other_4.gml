randomize()
//initial creation
mx = room_width/2
my = room_height/2
for(var i = 0; i<50; i++){
	var t = random(2*pi)
	var radius = 1000
	var u = random(1) + random(1)
	var r
	if(u>1){
	 r = 2-u	
	}else{
	 r = u	
	}
	var tempX = mx + radius*r*cos(t)
	var tempY = my + radius*r*sin(t)*4
	var new_room = instance_create_depth(tempX,tempY,0,gen_room)
	with(new_room){
		move_snap(64,64)	
	}
}
//delete duplicates
with(gen_room){
	with(gen_room){
		if(other.id != id){
			if(x == other.x && y == other.y){
				instance_destroy(other)	
			}
		}
	}
}
//seperation
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
//select rooms
for(var i = 0; i < 15; i++){
greatestA = 0
greatestO=noone
with(gen_room){
	if(type ==0){
	if(rwidth*rheight > level_generator.greatestA){	
		level_generator.greatestA = rwidth*rheight
		level_generator.greatestO = id
	}
	}
}
greatestO.type = 1
}

//draw path
completed = false
var found = false
with(gen_room){
	if(!found && type ==1){
		type =2
		instance_destroy(instance_nearest(x,y,type_1_marker))
		found = true
	}
}
with(gen_room){
	if(type == 1){
		instance_create_depth(x,y,0,type_1_marker)
		completed = false
	}
}
while(instance_exists(type_1_marker)){
		var current_best = room_height
		var current_best_id = noone
		with(gen_room){
			if(type == 2){
				var nearest = instance_nearest(x,y,type_1_marker)
				if(distance_to_object(nearest)<current_best){
					current_best = distance_to_object(nearest)
					current_best_id = id
				}
			}
		}
		with(current_best_id){
			var nearest = instance_nearest(x,y,type_1_marker)
			var nearest_type_1 = instance_nearest(nearest.x,nearest.y,gen_room)
			instance_destroy(nearest)
			ds_list_add(link_targets,nearest_type_1)
			nearest_type_1.type = 2
		}
}


//make halways

with(gen_room){
	if(type == 2){
		for(var i = 0; i<ds_list_size(link_targets);i++){
			var hallway = instance_create_depth(0,0,-1,gen_hallway)
			hallway.target = id
			hallway.destination = ds_list_find_value(link_targets,i)
			hallway_init(hallway)
		}
	}
}

//get rooms attached to hallways
with(gen_hallway){
	with(gen_room){
		if(type = 0){
			switch(other.type){
				case 0:
					if(line_in_rectangle(other.startx,other.starty,other.endx,other.endy, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
				break;
				case 1:
					if(line_in_rectangle(other.startx,other.starty,other.endx,other.endy, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
				break;
				case 2:
					if(line_in_rectangle(other.startx,other.starty,other.startx,other.endy, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
					if(line_in_rectangle(other.startx,other.endy,other.endx,other.endy, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
				break;
				case 3:
					if(line_in_rectangle(other.startx,other.starty,other.endx,other.starty, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
					if(line_in_rectangle(other.endx,other.starty,other.endx,other.endy, x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2)){
						type = 3
					}
				break;
			}
		}
	}
}
