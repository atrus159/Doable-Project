var nearest = instance_nearest(x,y,door);
if(!frozen && !climbing && sqrt(sqr(x-nearest.x) + sqr(y-nearest.y))>=200){
	frozen = true
	if(!inAir){
		if(keyboard_check(vk_up)){
			sprite_index = currentWeapon.sprite_g_up
			instance_create_depth(x,y,0,currentWeapon.hitbox_g_up)
		}else if(keyboard_check(vk_down)){
			sprite_index = currentWeapon.sprite_g_down
			instance_create_depth(x,y,0,currentWeapon.hitbox_g_down)	
		}else{
			if(facing == 1){
				sprite_index = currentWeapon.sprite_g_right
				instance_create_depth(x,y,0,currentWeapon.hitbox_g_right)
			}else{
				sprite_index = currentWeapon.sprite_g_left
				instance_create_depth(x,y,0,currentWeapon.hitbox_g_left)
			}
		}
	}else{
		if(keyboard_check(vk_up)){
			sprite_index = currentWeapon.sprite_a_up
			instance_create_depth(x,y,0,currentWeapon.hitbox_a_up)
		}else if(keyboard_check(vk_down)){
			sprite_index = currentWeapon.sprite_a_down
			instance_create_depth(x,y,0,currentWeapon.hitbox_a_down)	
		}else{
			if(facing == 1){
				sprite_index = currentWeapon.sprite_a_right
				instance_create_depth(x,y,0,currentWeapon.hitbox_a_right)
			}else{
				sprite_index = currentWeapon.sprite_a_left
				instance_create_depth(x,y,0,currentWeapon.hitbox_a_left)
			}
		}		
	}
	image_index = 0
	
}