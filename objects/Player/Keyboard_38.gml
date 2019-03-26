if(climbing){
	if(!place_meeting(x,y-climbSpeed,wall)){
	sprite_index = player_climbing_up
	y-=climbSpeed
	}else{
	sprite_index = player_climbing_stationary	
	}
	if(!place_meeting(x,y,rope)){
	climbing = false
	sprite_index = player_standing
	}
}