if(sprite_index == player_jumping){
	motion_add(90,jumpSpeed*(image_index/sprite_get_number(player_jumping)))
	sprite_index = player_mask
	frozen = false
}