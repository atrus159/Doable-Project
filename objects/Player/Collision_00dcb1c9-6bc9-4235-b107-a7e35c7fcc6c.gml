if(!climbing && keyboard_check(vk_up)){
	climbing = true
	sprite_index = player_climbing_up
	speed = 0
	x = other.x
	frozen = false
}