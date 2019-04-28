if(!frozen || (stunned == 0 && inAir && sprite_index != player_roll)){
	facing = 1;
		if(!inAir){
		sprite_index = player_walking;
		}
if(!place_meeting(x+pSpeed,y,wall) && !climbing){
	if(hspeed<0){
		hspeed +=0.3;	
	}else if(hspeed <= pSpeed){
	x+=pSpeed;
	hspeed = 0
	}
}
}