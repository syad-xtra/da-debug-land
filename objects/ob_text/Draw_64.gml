draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_large);

//timer
var time_min = floor(control.alarm[0]/3600);
var time_sec = control.alarm[0];
if (control.alarm[0] >= 3600){time_sec = control.alarm[0]%3600;}
time_sec = floor(time_sec/60);
var rate = string(floor(control.rating));
if (time_sec >= 10){time_sec = string(time_min) + ":" + string(time_sec);}
else{time_sec = string(time_min) + ":0" + string(time_sec);}

// draw the things
var star_set = string_width(rate);
draw_text(offset_x, offset_y, rate);
draw_sprite(sp_star, 0, offset_x + star_set, offset_y);
draw_text(offset_x, 106 + offset_y, time_sec);