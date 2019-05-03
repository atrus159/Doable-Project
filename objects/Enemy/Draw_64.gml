if(eHealth<eMaxHealth && distance_to_object(Player) <400){
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);
var display_scalex = display_get_gui_width()/cw;
var display_scaley = display_get_gui_height()/ch;
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;
draw_set_color(c_black)
draw_rectangle(xx-sprite_width/2-15,yy-sprite_height/2-50,xx+sprite_width/2+15,yy-sprite_height/2-30,false)
draw_set_color(c_red)
draw_rectangle(xx-sprite_width/2-10,yy-sprite_height/2-45,xx-sprite_width/2+(eHealth/eMaxHealth)*(sprite_width+20)-10,yy-sprite_height/2-35,false)
draw_set_color(c_black)
for(var i = 5; i< eHealth; i+=5){
draw_line(xx-sprite_width/2+(i/eMaxHealth)*(sprite_width+20)-10,yy-sprite_height/2-50,xx-sprite_width/2+(i/eMaxHealth)*(sprite_width+20)-10,yy-sprite_height/2-30)	
}

}