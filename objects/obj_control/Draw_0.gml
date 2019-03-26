

// MUST HAVE: Draw the surface to the screen
gpu_set_blendmode_ext(bm_dest_color, bm_zero);
draw_surface_ext(sur, 0, 0, 1, 1, 0, c_white, 1);
gpu_set_blendmode(bm_normal);

