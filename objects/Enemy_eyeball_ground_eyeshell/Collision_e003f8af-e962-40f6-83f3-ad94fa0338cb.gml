/// @description Insert description here
// You can write your code in this editor

if (ifStomp == true){
	
if(ds_list_find_index(hitboxes_hit,other)==-1){
	ds_list_add(hitboxes_hit,other)
	sprite_index = hitstun_sprite
	image_index = 0
	state = -1
	eHealth -=other.damage
	if(other.angle == -1){
		var hitDir = 180-darctan2(other.y-y,other.x-x)
		motion_set(hitDir,other.knockback*knockback_mod/2)
		motion_add(90,10)
	}else{
		motion_set(other.angle,other.knockback*knockback_mod)
	}
	if(other.pogo){
		with(Player){
			motion_set(90,12)	
		}
	}
	if(other.freeze){
	if(!instance_exists(hitFrame)){
		instance_create_depth(0,0,-1,hitFrame)
	}	
	}
}

}