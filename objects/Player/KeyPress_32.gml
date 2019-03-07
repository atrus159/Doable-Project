if(!frozen){
if(!inAir){
/*sprite_index = player_jumping
frozen = true*/
	if(!position_meeting(x,y-pHeight/2-32,wall) &&!position_meeting(x+32,y-pHeight/2-32,wall) && !position_meeting(x-32,y-pHeight/2-32,wall)){
	motion_add(90,jumpSpeed)
	sprite_index = player_air
	inAir = 1
	}
}
}