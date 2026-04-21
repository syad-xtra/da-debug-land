draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_large);
var time_sec = "";
var rate = string(floor(control.rating));
if (control.alarm[1] != -1){time_sec = timer(1);}
else if (control.alarm[0] != -1){time_sec = timer(0);}

// draw the things
var star_set = string_width(rate);
draw_text(offset_x, offset_y, rate);
draw_sprite(sp_star, 0, offset_x + star_set, offset_y);
if (control.alarm[1] != -1 ){draw_set_color(c_red);}
draw_text(offset_x, 106 + offset_y, time_sec);