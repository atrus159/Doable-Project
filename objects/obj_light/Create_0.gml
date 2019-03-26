// MUST HAVE: Create surface for light;
sprite_index = spr_light
sur = surface_create(sprite_width, sprite_height);

image_blend = make_color_rgb(200 + irandom(55), 200 + irandom(55), 200 + irandom(55));
light_change_scale(6, 6);
light_update();

