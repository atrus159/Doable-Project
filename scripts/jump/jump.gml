var jspeed = argument0
if(!position_meeting(x,y-sprite_height/2-32,wall) &&!position_meeting(x+31,y-sprite_height/2-32,wall) && !position_meeting(x-31,y-sprite_height/2-32,wall)){
	motion_add(90,jspeed)
	sprite_index = falling_sprite
}