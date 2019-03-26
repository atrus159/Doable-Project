if(climbing){
	if(!place_meeting(x,y+climbSpeed,standable)){
	sprite_index = player_climbing_down
	y+=climbSpeed
	}else{
	climbing = false
	sprite_index = player_standing
	}
}else if(place_meeting(x,y+1,platform)&&!place_meeting(x,y+1,wall)){
	y+=1
}