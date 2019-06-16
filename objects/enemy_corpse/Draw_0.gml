if(instance_exists(freezeFrame)){
	shader_reset()	
}
draw_set_alpha(fade/600)
draw_sprite(sprite_index,image_index,x,y)
fade -=1;
if(fade <=0){
	instance_destroy(self)
}
draw_set_alpha(1)

if(instance_exists(freezeFrame)){
	shader_set(hit_shader)
}
