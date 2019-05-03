if(!frozen){
if(!inAir || climbing){
/*sprite_index = player_jumping
frozen = true*/
	climbing = false
	if(!position_meeting(x,y-pHeight/2-32,wall) &&!position_meeting(x+31,y-pHeight/2-32,wall) && !position_meeting(x-31,y-pHeight/2-32,wall)){
	motion_add(90,jumpSpeed)
	sprite_index = player_air
	inAir = 1
	}
}else if(position_meeting(x+64, y,wall)  && sprite_index != player_wall_kick){
	motion_add(90+30,1.4*jumpSpeed);
	sprite_index = player_wall_kick;
	image_index = 0;
}else if(position_meeting(x-64, y,wall)  && sprite_index != player_wall_kick){
	motion_add(90-30,1.4*jumpSpeed);
	sprite_index = player_wall_kick;
	image_index = 0;
}
}