if(!frozen){
	facing = 1;
		if(sprite_index != player_air){
		sprite_index = player_walking;
		}
if(!place_meeting(x+pSpeed,y,wall)){
	x+=pSpeed;
}
}