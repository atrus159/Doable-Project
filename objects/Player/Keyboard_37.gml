var airAttack = (sprite_index == currentWeapon.sprite_a_right) || (sprite_index == currentWeapon.sprite_a_left) || (sprite_index == currentWeapon.sprite_a_up) || (sprite_index == currentWeapon.sprite_a_down)

if(camera.startFlag == 1 && (!frozen || (airAttack && inAir))){
		facing = -1;
		if(!inAir){
		sprite_index = player_walking;
		}
if(!place_meeting(x-pSpeed,y,wall) && !climbing){
	if(hspeed>0){
		hspeed -=0.3;	
	}else if(hspeed >= -pSpeed){
	x-=pSpeed;
	hspeed = 0
	}
}
}