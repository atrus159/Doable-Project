/// @description
// You can write your code in this editor

var UpperLeftX = x - sight_width/2;
var UpperLeftY = y - sight_width/2;
var LowerRightX = x + sight_width/2;
var LowerRightY = y + sight_width/2;

draw_set_font(font0);
draw_set_color(c_lime);
//draw_text(50,50,state);
//draw_text(50,70,walkTime);
//draw_text(50,90,waitTime);
draw_sprite(sprite_index,image_index,x,y);
draw_rectangle(UpperLeftX, UpperLeftY,LowerRightX, LowerRightY,true);

