/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_set_color(c_white)
draw_text(x + 50,y - 50, state);

draw_text(x + 50, y - 100, "flyHDir: " + string(flyHDir) );
draw_text(x + 50, y - 125, "flyVDir: " + string(flyVDir) );

draw_circle(x,y,WDradius,true);
