var i = y
while(!instance_position(x,i+32,standable)){
	i+=32
	instance_create_depth(x,i,0,rope)
}