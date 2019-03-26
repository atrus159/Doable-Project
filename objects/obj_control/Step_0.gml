// MUST HAVE: Draw all the lights to the surface
surface_set_target(sur);
draw_clear(c_black);
gpu_set_blendmode(bm_add);
with (obj_light) {
  draw_surface_ext(sur, x - sprite_width / 2, y - sprite_height / 2, 1, 1, 0, image_blend, 1);
}
gpu_set_blendmode(bm_normal);
surface_reset_target();