if(line_cross_line(L1.x,L1.y,L2.x,L2.y,L3.x,L3.y,L4.x,L4.y)){
	draw_set_color(c_red)	
}else{
	draw_set_color(c_lime)	
}
draw_line_width(x,y,L1.x,L1.y,10)
draw_sprite(sprite_index,0,x,y)