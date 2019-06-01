if(create_flag==0){
instance_deactivate_object(wall)
instance_activate_region(x-2000,y-2000,4000,4000,true)
instance_deactivate_object(Enemy);
instance_activate_region(x-1500,y-1500,3000,3000,true)
with(door){
	if(activator != noone){
		instance_deactivate_object(self);
	}
}
}