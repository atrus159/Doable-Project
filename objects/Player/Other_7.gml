switch(sprite_index){
	/*case player_jumping:
	sprite_index = player_mask
	motion_add(90,jumpSpeed)
	frozen = false;
	break;*/
	case player_landing:
	sprite_index = player_mask
	frozen = false;
	break;
	case player_attack:
	sprite_index = player_standing
	frozen = false
	break;
	
}