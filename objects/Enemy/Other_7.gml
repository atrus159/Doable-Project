if(state == -1){
	state =0
	sprite_index = standing_sprite
	if(!inAir && eGravity != 0){
	motion_set(0,0)
	}
	ds_list_clear(hitboxes_hit)
}