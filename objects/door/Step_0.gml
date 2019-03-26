if(create_flag){
create_flag = false	
switch(sprite_index){
	case door_sprite_down:
		instance_create_depth(x,y+32,0,platform)
		instance_create_depth(x-64,y+32,0,platform)
		instance_create_depth(x+64,y+32,0,platform)
		instance_create_depth(x-2*64,y+32,0,platform)
		instance_create_depth(x+2*64,y+32,0,platform)
		instance_create_depth(x,y,1,rope_top)
	break;
	case door_sprite_up:
		instance_create_depth(x,y+64+32,0,platform)
		instance_create_depth(x-64,y+64+32,0,platform)
		instance_create_depth(x+64,y+64+32,0,platform)
		instance_create_depth(x-2*64,y+64+32,0,platform)
		instance_create_depth(x+2*64,y+64+32,0,platform)
		instance_create_depth(x,y+64,1,rope_top)
	break;
	case door_sprite_right:
	var create = true
	for(var i = 0; i<4; i++){
		if(instance_position(x-96,y+160+i*64,wall)){
			create = false
		}
	}
	if(create){
		instance_create_depth(x-96,y+160,0,platform)
		instance_create_depth(x-96,y+160-32,0,rope_top)
	}
	break;
	case door_sprite_left:
	var create = true
	for(var i = 0; i<4; i++){
		if(instance_position(x+96,y+160+i*64,wall)){
			create = false
		}
	}
	if(create){
		instance_create_depth(x+96,y+160,0,platform)
		instance_create_depth(x+96,y+160-32,0,rope_top)
	}
	break;
}
}