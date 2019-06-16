if(instance_exists(Player) && startFlag){
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


camera_set_view_pos(view_camera[0],x-widthOffset+random_range(global.shake, -global.shake),y-heightOffset+random_range(global.shake, -global.shake))
global.shake*=0.9;
if(global.shake<0.1){
global.shake = 0;
}
