if(!frozen || sprite_index == player_roll){
draw_sprite_ext(sprite_index,image_index,x,y,facing,1,0,c_white,1)
}else{
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
}
if(invulnerable>0){
	draw_set_color(c_white)
	draw_set_alpha(0.5)
	draw_circle(x,y,64,false)
	draw_set_alpha(1)
}
