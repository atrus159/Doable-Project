if(!frozen){
	if(!inAir){
	frozen = true
	sprite_index = player_attack
	image_index = 0
	instance_create_depth(x,y,0,attack_hitbox)
	}
	
	
}