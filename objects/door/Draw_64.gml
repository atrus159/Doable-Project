if(sqrt(sqr(x-Player.x) + sqr(y-Player.y))<200){
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);
var display_scalex = display_get_gui_width()/cw;
var display_scaley = display_get_gui_height()/ch;
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;
draw_set_alpha(0.7)
var theta = arctan2(y-Player.y,x-Player.x)
draw_sprite(z_button,-1,xx+20*cos(theta),yy+20*sin(theta))
draw_set_alpha(1)
}
