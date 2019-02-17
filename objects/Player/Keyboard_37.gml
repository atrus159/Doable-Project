if(!frozen || inAir){
		facing = -1;
		if(!inAir){
		sprite_index = player_walking;
		}
if(!place_meeting(x-pSpeed,y,wall)){
	x-=pSpeed;
}
}