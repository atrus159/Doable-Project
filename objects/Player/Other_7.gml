switch(sprite_index){
	case player_landing:
	sprite_index = player_mask
	frozen = false;
	break;
	case player_attack:
	sprite_index = player_standing
	frozen = false
	break;
	case player_roll:
	sprite_index = player_end_roll
	break;
	case player_end_roll:
	sprite_index = player_standing
	frozen = false
	break;
	case player_stunned:
	sprite_index = player_standing
	frozen = false
	break;
	case player_wall_kick:
	sprite_index = player_air
	break;
	case player_ledge:
	sprite_index = player_standing
	frozen = false;
	x += facing*64;
	y -=pHeight-2;
	break;
}