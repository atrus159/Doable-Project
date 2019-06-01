draw_set_color(c_black)
draw_rectangle(0,0,2000,2000,false)
draw_set_font(font0)
draw_set_color(c_aqua)
draw_text(100,450,"Loading...")
draw_set_color(c_dkgray)
draw_rectangle(90,490,100+10*64+10,560,false)
draw_set_color(c_aqua)
draw_rectangle(100,500,100+stage*64,550,false)
draw_text(100, 100, stage);
switch(stage){
case 0:
mx = room_width/2
my = room_height/2
for(var i = 0; i<roomCount; i++){
	var t = random(2*pi)
	var radius = generationRadius
	var u = random(1) + random(1)
	var r
	if(u>1){
	 r = 2-u	
	}else{
	 r = u	
	}
	var tempX = mx + radius*r*cos(t)*generationWidth
	var tempY = my + radius*r*sin(t)*generationHeight
	var new_room = instance_create_depth(tempX,tempY,0,gen_room)
	ds_list_shuffle(RoomSizes)
	switch(ds_list_find_value(RoomSizes,0)){
		case 0:
			new_room.rwidth = largeWidth*64
			new_room.rheight = largeHeight*64
			//ds_list_shuffle(large_rooms)
			//new_room.room_code = ds_list_find_value(large_rooms,0)
		break;
		case 1:
			new_room.rwidth = mediumWidth*64
			new_room.rheight = mediumHeight*64
			//ds_list_shuffle(medium_rooms)
			//new_room.room_code = ds_list_find_value(medium_rooms,0)
		break;
		case 2:
			new_room.rwidth = smallWidth*64
			new_room.rheight = smallHeight*64
			//ds_list_shuffle(small_rooms)
			//new_room.room_code = ds_list_find_value(small_rooms,0)
		break;
	}
	with(new_room){
		move_snap(64,64)	
	}
}
break;
case 1:
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
break;
case 2:
//seperation
seperateRooms()
break;
case 3:
//select rooms
for(var i = 0; i < mainRoomCount; i++){
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

var topRoom = noone
for(var i = 0; i<room_height; i++){
	with(gen_room){
		if(type == 1){
			if(y = i){
				topRoom = id
				break;
			}
		}
	}
	if(topRoom != noone){
		break;	
	}
}
topRoom.rwidth = largeWidth * 64
topRoom.rheight = largeHeight*64
//ds_list_shuffle(large_rooms)
//topRoom.room_code = ds_list_find_value(large_rooms,0)
instance_create_depth(topRoom.x,topRoom.y,0,Player)
var largeCount = 0
with(gen_room){
	if(type == 1 && rwidth == other.largeWidth && rheight == other.largeHeight){
			largeCount ++
	}
}
if(largeCount <=1){
	var botRoom = noone
for(var i = room_height; i>0; i--){
	with(gen_room){
		if(type == 1){
			if(y = i){
				botRoom = id
				break;
			}
		}
	}
	if(botRoom != noone){
		break;	
	}
}
botRoom.rwidth = largeWidth * 64
botRoom.rheight = largeHeight*64
//ds_list_shuffle(large_rooms)
//botRoom.room_code = ds_list_find_value(large_rooms,0)
}

seperateRooms()

break;
case 4:
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

break;
//make halways
case 5:
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
break;
case 6:
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
break;
//assign room contents
case 7:
with(gen_hallway){
	give_rooms_doors()	
}
with(gen_room){
	set_door_type()
	if(rwidth == other.smallWidth*64){
		ds_list_shuffle(other.small_rooms[door_type])
		room_code = ds_list_find_value(other.small_rooms[door_type],0)
	}else if(rwidth == other.mediumWidth*64){
		ds_list_shuffle(other.medium_rooms[door_type])
		room_code = ds_list_find_value(other.medium_rooms[door_type],0)
	}else if(rwidth == other.largeWidth*64){
		ds_list_shuffle(other.large_rooms[door_type])
		room_code = ds_list_find_value(other.large_rooms[door_type],0)
	}
}

break;
case 8:

//build room
with(gen_room){
	move_snap(64,64)
	if(type == 0){
		instance_destroy(self)	
	}
}
for(var i = 32; i<room_width; i+=64){
	for(var j = 32; j<room_width; j+=64){
		var create = true
		with(gen_room){
			if(point_in_rectangle(i,j,x-rwidth/2+32,y-rheight/2+32,x+rwidth/2-32,y+rheight/2-32)){
				create = false
			}
		}
		with(gen_hallway){
			switch(type){
				case 0:
					if(point_distance(i,j,i,starty)<level_generator.hwidth){
						if(is_between(i,startx,endx)){
							create = false	
						}
					}
				break;
				case 1:
					if(point_distance(i,j,startx,j)<level_generator.hwidth){
						if(is_between(j,starty,endy)){
							create = false	
						}
					}
				break;
				case 2:
					if(point_distance(i,j,startx,j)<level_generator.hwidth){
						if(is_between(j,starty,endy)){
							create = false	
						}
					}
					if(point_distance(i,j,i,endy)<level_generator.hwidth){
						if(is_between(i,startx,endx)){
							create = false	
						}
					}
					if(point_distance(i,j,startx,endy)<level_generator.hwidth){
						create = false
					}
				break;
				case 3:
					if(point_distance(i,j,endx,j)<level_generator.hwidth){
						if(is_between(j,endy,starty)){
							create = false	
						}
					}
					if(point_distance(i,j,i,starty)<level_generator.hwidth){
						if(is_between(i,endx,startx)){
							create = false	
						}
					}
					if(point_distance(i,j,endx,starty)<level_generator.hwidth){
						create = false
					}
				break;
			}
		}
		if(create){
			instance_create_depth(i,j,0,noncritical_wall)	
		}
	}
}
with(gen_room){
	var isnoncritical = false
	if(type == 3){
		isnoncritical = true
	}
	buildRoom(x-rwidth/2, y-rheight/2,room_code, isnoncritical)
	instance_destroy(self)	
}
with(noncritical_wall){
		with(gen_hallway){
			switch(type){
				case 0:
					if(point_distance(other.x,other.y,other.x,starty)<level_generator.hwidth){
						if(is_between(other.x,startx,endx)){
							instance_destroy(other)	
						}
					}
				break;
				case 1:
					if(point_distance(other.x,other.y,startx,other.y)<level_generator.hwidth){
						if(is_between(other.y,starty,endy)){
							instance_destroy(other)	
						}
					}
				break;
				case 2:
					if(point_distance(other.x,other.y,startx,other.y)<level_generator.hwidth){
						if(is_between(other.y,starty,endy)){
							instance_destroy(other)	
						}
					}
					if(point_distance(other.x,other.y,other.x,endy)<level_generator.hwidth){
						if(is_between(other.x,startx,endx)){
							instance_destroy(other)	
						}
					}
				break;
				case 3:
					if(point_distance(other.x,other.y,endx,other.y)<level_generator.hwidth){
						if(is_between(other.y,endy,starty)){
							instance_destroy(other)	
						}
					}
					if(point_distance(other.x,other.y,other.x,starty)<level_generator.hwidth){
						if(is_between(other.x,endx,startx)){
							instance_destroy(other)	
						}
					}
				break;
			}
		}	
	
}
break;
case 9:
with(gen_hallway){
	var startDoor = instance_create_depth(startx,starty,0,door)
	var endDoor = instance_create_depth(endx,endy,0,door)
	switch(type){
		case 0:
			if(startx < endx){
				startDoor.sprite_index = door_sprite_right
				endDoor.sprite_index = door_sprite_left
			}else{
				startDoor.sprite_index = door_sprite_left
				endDoor.sprite_index = door_sprite_right
			}
		break;
		case 1:
			if(starty < endy){
				startDoor.sprite_index = door_sprite_down
				endDoor.sprite_index = door_sprite_up
			}else{
				startDoor.sprite_index = door_sprite_up
				endDoor.sprite_index = door_sprite_down
			}
		break;
		case 2:
			if(starty < endy){
				startDoor.sprite_index = door_sprite_down
				if(startx <endx){
				endDoor.sprite_index = door_sprite_left
				}else{
				endDoor.sprite_index = door_sprite_right	
				}
			}else{
				startDoor.sprite_index = door_sprite_up
				if(startx <endx){
				endDoor.sprite_index = door_sprite_left	
				}else{
				endDoor.sprite_index = door_sprite_right	
				}
			}
		break;
		case 3:
			if(startx < endx){
				startDoor.sprite_index = door_sprite_right
				if(starty <endy){
				endDoor.sprite_index = door_sprite_up
				}else{
				endDoor.sprite_index = door_sprite_down
				}
			}else{
				startDoor.sprite_index = door_sprite_left
				if(starty <endy){
				endDoor.sprite_index = door_sprite_up
				}else{
				endDoor.sprite_index = door_sprite_down	
				}
			}
		break;
		
	}
	//instance_destroy(self)	
}

	
break;
case 10:

instance_deactivate_object(wall)
camera.create_flag = 0;
instance_destroy(self)
	
break;
	
}


stage ++