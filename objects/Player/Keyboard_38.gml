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
}else if(inAir && sprite_index == player_air){
	if(place_meeting(x+facing*65,y-pHeight/2,wall)){
		if(!place_meeting(x+facing*65,y-pHeight/2-64,wall)){
			sprite_index = player_ledge;
			image_index = 0;
			while(!place_meeting(x+facing*1,y,wall)){
				x+=facing
			}
			while(!place_meeting(x+facing*65,y-pHeight/2-1,wall)){
				y -= 1;
			}
			frozen = true;
			motion_set(0,0);
		}
	}
}