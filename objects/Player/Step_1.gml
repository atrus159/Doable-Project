if(stunned >0){
 stunned --
 frozen = true
}
if(invulnerable >0){
	invulnerable --	
}
if(sprite_index == player_roll){
	mask_index = roll_mask
}else{
	mask_index = player_mask	
}
if(abs(hspeed)>pSpeed){
	hspeed /= 1.01;	
}


