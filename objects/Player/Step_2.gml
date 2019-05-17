if(sprite_index != player_ledge){
if((!place_meeting(x,y+1,standable) || place_meeting(x,y,standable) )&& !climbing){
motion_add(-90,pGravity)
inAir = true;
}else{
inAir = false;	
}
if(vspeed > maxFallSpeed){
	vspeed = maxFallSpeed	
}



if(place_meeting(x,y+vspeed,wall)){
	var dir = 1
	if(direction>0 && direction<180){
		dir = -1	
	}
	while(!place_meeting(x,y+dir,wall)){
		y+=dir
	}
	if(sprite_index == player_air){
	sprite_index = player_standing
	}
	if(vspeed == maxFallSpeed && (direction <360 || direction>180)){
	sprite_index = player_landing
	image_index = 0
	frozen = true
	}
	vspeed = 0
	hspeed = 0

}
if(vspeed >0 && !place_meeting(x,y,platform) && place_meeting(x,y+vspeed,platform)){
	while(!place_meeting(x,y+1,platform)){
		y+=1
	}
	if(sprite_index == player_air){
	sprite_index = player_standing
	}
	if(vspeed == maxFallSpeed && (direction <360 || direction>180)){
	sprite_index = player_landing
	image_index = 0
	frozen = true
	}
	vspeed = 0
	hspeed = 0
}
if(place_meeting(x+hspeed,y,wall)){
	var dir = 1
	if(direction>90 && direction<270){
		dir = -1	
	}
	while(!place_meeting(x+dir,y,wall)){
		x+=dir
	}
	hspeed = 0
}


if(sprite_index == player_walking){
if(!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	sprite_index = player_standing	
}
}
if(sprite_index == player_roll){
	if(!place_meeting(x+facing*rollSpeed,y,wall)){
	x += facing*rollSpeed
	}else{
	sprite_index = player_standing;	
	}
}
if(sprite_index == player_standing && frozen && !inAir){
		frozen = 0;
}
if(climbing && !keyboard_check(vk_down) && !keyboard_check(vk_up)){
	sprite_index = player_climbing_stationary	
}
}