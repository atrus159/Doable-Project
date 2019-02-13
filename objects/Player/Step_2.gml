if(!place_meeting(x,y+1,wall)){
motion_add(-90,pGravity)
inAir = true;
}else{
inAir = false;	
}
if(vspeed > maxFallSpeed){
	vspeed = maxFallSpeed	
}
if(place_meeting(x,y+vspeed,wall)){
	while(!place_meeting(x,y+1,wall)){
		y+=1
	}
	sprite_index = player_standing
	if(vspeed == maxFallSpeed){
	sprite_index = player_landing
	image_index = 0
	frozen = true
	}
	vspeed = 0

}
if(sprite_index == player_walking){
if(!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	sprite_index = player_standing	
}
}