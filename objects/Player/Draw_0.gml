if(instance_exists(freezeFrame)){
	shader_reset()	
}
if(invulnerable>0){
	shader_set(invul_shader);
	time = shader_get_uniform(invul_shader, "time")
	shader_set_uniform_f(time,(invulnerable mod 30)/30)
}
if(!frozen || sprite_index == player_roll){
draw_sprite_ext(sprite_index,image_index,x,y,facing,1,0,c_white,1)
}else{
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
}
shader_reset()
if(instance_exists(freezeFrame)){
	shader_set(hit_shader)
}
//draw_set_color(c_white)
//draw_text(x-64,y-80,image_speed)
//draw_text(x-64,y-64,image_index)