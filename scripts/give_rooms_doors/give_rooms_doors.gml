switch(type){
	case 0:
	if(target.x>destination.x){
		target.left_door = true
		destination.right_door = true
	}else{
		target.right_door = true
		destination.left_door = true
	}
	break;
	case 1:
	if(target.y>destination.y){
		target.top_door = true
		destination.bot_door = true
	}else{
		target.bot_door = true
		destination.top_door = true
	}
	break;
	case 2:
	if(target.y>destination.y){
		target.top_door = true
	}else{
		target.bot_door = true
	}
	if(target.x>destination.x){
		destination.right_door = true
	}else{
		destination.left_door = true
	}
	break;
	case 3:
	if(target.x>destination.x){
		target.left_door = true
	}else{
		target.right_door = true
	}
	if(target.y>destination.y){
		destination.bot_door = true
	}else{
		destination.top_door = true
	}
	break;
}