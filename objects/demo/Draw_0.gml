draw_set_color(c_yellow)
if(line_in_rectangle(L1.x,L1.y,L2.x,L2.y,64*2,64*2,64*4,64*6)){
	draw_set_color(c_red)
}
if(line_in_rectangle(L3.x,L3.y,L4.x,L4.y,64*2,64*2,64*4,64*6)){
	draw_set_color(c_red)
}

draw_rectangle(64*2,64*2,64*4,64*6,true)
