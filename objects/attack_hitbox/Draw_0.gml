if(instance_exists(freezeFrame)){
	shader_reset()	
}

draw_sprite(sprite_index,image_index,x,y)

if(instance_exists(freezeFrame)){
	shader_set(hit_shader)
}
