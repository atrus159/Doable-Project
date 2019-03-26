var xp, yp, lw, lh, imin, imax, i, pdmin, pdmax, minx, miny, maxx, maxy, a_min, a_max, a_test;

lw = sprite_width;
lh = sprite_height;

surface_set_target(sur);
draw_clear(c_black);
draw_sprite_ext(sprite_index, image_index, lw / 2, lh / 2, image_xscale, image_yscale, image_angle, c_white, 1);   

with (obj_wall) {
  minx = px[0];
  miny = py[0];
  maxx = px[0];
  maxy = py[0];
  
  imin = -1;
  imax = -1;
  a_test = point_direction(other.x, other.y, x, y);
  a_min = -1;
  a_max = -1;
  
  for (i = 0; i < points; i++) {
    if (px[i] < minx)
      minx = px[i];
    if (px[i] > maxx)
      maxx = px[i];
    if (py[i] < miny)
      miny = py[i];
    if (py[i] > maxy)
      maxy = py[i];
      
    pdmin = (point_direction(other.x, other.y, x + px[i], y + py[i]) - a_test + 360) mod 360;
    pdmax = (a_test - point_direction(other.x, other.y, x + px[i], y + py[i]) + 360) mod 360;
    if (pdmin > a_min && pdmin <= 180) {
      a_min = pdmin;
      imin = i;
    }
    if (pdmax > a_max && pdmax <= 180) {
      a_max = pdmax;
      imax = i;
    }
  }
  
  if (rectangle_in_rectangle(x + minx, y + miny, x + maxx, y + maxy, other.x - lw / 2, other.y - lh / 2, other.x + lw / 2, other.y + lw / 2)) {   
    i = imin;
    draw_primitive_begin(pr_trianglestrip);
    do {
      pd = point_direction(other.x, other.y, x + px[i], y + py[i]);
      draw_vertex_color(x + px[i] - other.x + other.sprite_width / 2, y + py[i] - other.y + other.sprite_height / 2, c_black, 1);
      draw_vertex_color(x + px[i] + lengthdir_x(height, pd) - other.x + other.sprite_width / 2, y + py[i] + lengthdir_y(height, pd) - other.y + other.sprite_height / 2, c_black, 1 - fade);
      i += 1;
      i = i mod points;
    } until (i == (imax + 1) mod points)
    draw_primitive_end();
  }
}

surface_reset_target();
