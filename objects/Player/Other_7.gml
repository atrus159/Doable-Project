switch(sprite_index){
	default:
	if(!inAir){
	sprite_index = player_standing
	}else{
	sprite_index = player_air
	}
	frozen = false
	break;
	case player_walking:
	break;
	case player_landing:
	sprite_index = player_standing;
	frozen = false;
	camera.startFlag = 1
	break;
	case player_corpse:
	room_restart()
	break;
	case player_roll:
	sprite_index = player_end_roll
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