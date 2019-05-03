shader_set(hit_shader);
if(create_flag == 0){
	create_flag =1	
}else{
while(i>0){
	i--;
}
shader_reset();
instance_destroy(self)
}