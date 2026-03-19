draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_large);
var rate = string(floor(ob_control.rating));
var star_set = string_width(rate);
draw_text(offset, offset, rate);
draw_sprite(sp_star, 0, offset + star_set, offset);