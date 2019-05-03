if(instance_exists(Player)){
if(centeringX == 0){
	if(abs(Player.x-x)>xrange){
		centeringX = sign(Player.x-x);
	}
}else{
	mp_linear_step(Player.x+(xrange-xoff)*centeringX,y,distance_to_point(Player.x+(xrange-xoff)*centeringX,y)/30,false)
	if(distance_to_point(Player.x+(xrange-xoff)*centeringX,y)<5){
		centeringX = 0;	
	}
}
if(centeringY == 0){
	if(abs(Player.y-y)>yrange){
		centeringY = sign(Player.y-y);
	}
}else{
	mp_linear_step(x,Player.y+(yrange-yoff)*centeringY,power(distance_to_point(x,Player.y+(yrange-yoff)*centeringY),2)/5000,false)
	if(distance_to_point(x,Player.y+(yrange-yoff)*centeringY)<5){
		centeringY = 0;	
	}
}
}


/*
if(!centeringX){
	if(abs(Player.x-camera_get_view_x(view_camera[0])-512)>xrange){
		centeringX = true;
		camera_set_view_border(view_camera[0],500,camera_get_view_border_y(view_camera[0]))
	}
}else{
	if(abs(Player.x-camera_get_view_x(view_camera[0])-512)<5){
		centeringX = false;
		camera_set_view_border(view_camera[0],0,camera_get_view_border_y(view_camera[0]))
	}
	else{
		camera_set_view_speed(view_camera[0],abs(Player.x-camera_get_view_x(view_camera[0])-512)/30,camera_get_view_speed_y(view_camera[0]))
	}
}

if(!centeringY){
	if(abs(Player.y-camera_get_view_y(view_camera[0])-384)>yrange){
		centeringY = true;
		camera_set_view_border(view_camera[0],camera_get_view_border_x(view_camera[0]),500)
	}
}else{
	if(abs(Player.y-camera_get_view_y(view_camera[0])-384)<5){
		centeringY = false;
		camera_set_view_border(view_camera[0],camera_get_view_border_x(view_camera[0]),0)
	}
	else{
		camera_set_view_speed(view_camera[0],camera_get_view_speed_x(view_camera[0]),abs(Player.y-camera_get_view_y(view_camera[0])-384)/10)
	}
}
*/