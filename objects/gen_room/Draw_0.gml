if(type == 0){
draw_set_color(c_blue)
}else if(type == 1){
draw_set_color(c_red)
}else if(type =2){
draw_set_color(c_lime)	
}else{
draw_set_color(c_aqua)	
}
draw_set_alpha(0.5)
draw_rectangle(x-rwidth/2,y-rheight/2,x+rwidth/2,y+rheight/2,false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(x-32,y-32,x+32,y+32,false)
/*if(ds_list_size(link_targets) != 0){
	for(var i = 0; i<ds_list_size(link_targets); i++){
		draw_set_color(c_yellow)
		draw_line(x,y,ds_list_find_value(link_targets,i).x,ds_list_find_value(link_targets,i).y)
	}
}*/