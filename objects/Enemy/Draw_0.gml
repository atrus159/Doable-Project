if(instance_exists(freezeFrame) && sprite_index == hitstun_sprite){
	shader_reset()	
}

draw_sprite(sprite_index,image_index,x,y)

if(instance_exists(freezeFrame) && sprite_index == hitstun_sprite){
	shader_set(hit_shader)
}
