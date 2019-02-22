

switch(type){
	case 0:
	draw_set_color(c_red)
	draw_line_width(startx,starty,endx,endy,64);
	break;
	case 1:
		draw_set_color(c_yellow)
	draw_line_width(startx,starty,endx,endy,64);
	break;
	case 2:
		draw_set_color(c_fuchsia)
	draw_line_width(startx,starty,startx,endy,64);
	draw_line_width(startx,endy,endx,endy,64);
	break;
	case 3:
		draw_set_color(c_black)
	draw_line_width(startx,starty,endx,starty,64);
	draw_line_width(endx,starty,endx,endy,64);
	break;
}
