t--
if(t<=0){
	instance_activate_object(target)
	with(target){
		if(place_meeting(x,y,Player)){
			other.t = 10
			instance_deactivate_object(self)
		}else{
			instance_destroy(other)
		}
	}
}