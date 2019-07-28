if(sprite_index != player_corpse){
shader_reset()
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);
var display_scalex = display_get_gui_width()/cw;
var display_scaley = display_get_gui_height()/ch;
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;
draw_set_color(c_black)
draw_rectangle(xx-pWidth/2-15,yy-pHeight/2-50,xx+pWidth/2+15,yy-pHeight/2-30,false)
draw_set_color(c_lime)
draw_rectangle(xx-pWidth/2-10,yy-pHeight/2-45,xx-pWidth/2+(pHealth/pMaxHealth)*(pWidth+20)-10,yy-pHeight/2-35,false)
draw_set_color(c_black)
for(var i = 1; i< pHealth; i+=1){
draw_line_width(xx-pWidth/2+(i/pMaxHealth)*(pWidth+20)-10,yy-pHeight/2-50,xx-pWidth/2+(i/pMaxHealth)*(pWidth+20)-10,yy-pHeight/2-30,2)	
}
}

	
	
	if(invulnerable>0 && sprite_index != player_roll){
	shader_set(damage_shader);
	time = shader_get_uniform(damage_shader, "time")
	shader_set_uniform_f(time,0.5-(invulnerable/2)/exp(invulnerable/2))
	}else{
	shader_reset();	
	}