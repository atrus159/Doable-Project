	if(invulnerable>0){
	shader_set(damage_shader);
	time = shader_get_uniform(damage_shader, "time")
	shader_set_uniform_f(time,0.5-(invulnerable/2)/exp(invulnerable/2))
	}else{
	shader_reset();	
	}