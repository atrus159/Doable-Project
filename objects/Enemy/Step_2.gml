if(!place_meeting(x,y+1,wall)){
motion_add(-90,eGravity)
inAir = true;
}else{
inAir = false;	
}
if(vspeed > maxFallSpeed){
	vspeed = maxFallSpeed	
}
if(place_meeting(x,y+vspeed,standable)){
	var dir = 1
	if(direction>0 && direction<180){
		dir = -1	
	}
	while(!place_meeting(x,y+dir,standable)){
		y+=dir
	}
	if(sprite_index == falling_sprite){
	sprite_index = standing_sprite
	}
	speed = 0

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

if(eHealth<=0){
	instance_create_depth(x,y,0,corpse)
	instance_destroy(self)	
}