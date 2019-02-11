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
	if(vspeed == maxFallSpeed){
	sprite_index = player_landing
	frozen = true
	}
	vspeed = 0

}