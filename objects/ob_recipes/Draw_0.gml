
var d_y = 24;
draw_set_color(c_black);
smallCenteredText();
for (var i = 6; i < array_length(combo); i++){
	var d_sprite = objectNameToSprite(combo[i][0][0]);
	var c1_sprite = objectNameToSprite(combo[i][1][0]);
	var c2_sprite = objectNameToSprite(combo[i][1][1]);
	var gap = sprite_get_height(d_sprite) + 16;
	var text = combo[i][0][1];
	show_debug_message("Sprite height 1 for " + string(i) + " sprite:" + string(sprite_get_height(d_sprite)));
	if !(combo[i][0][2]){
		d_sprite = sp_mystery_sprite;
		text = "Unknown";}
	show_debug_message("Sprite height 2 for " + string(i) + " sprite:" + string(sprite_get_height(d_sprite)));
	draw_sprite(d_sprite, 0, x_origin, d_y);
	draw_text(x_origin + sprite_get_width(d_sprite)/2, d_y + gap, text);
	if (combo[i][0][2]){
		var c_x1 = x_origin + x_offset + sprite_get_width(d_sprite)*2;
		var c_x2 = c_x1 + x_offset + sprite_get_width(c1_sprite)*2;
		draw_text(c_x2 - (c_x1/1.85), d_y + gap/2, "=");
		draw_text(c_x2 - 24 , d_y + gap/2, "+");
		draw_sprite(c1_sprite, 0, c_x1, d_y);
		draw_sprite(c2_sprite, 0, c_x2, d_y);
		draw_text(c_x1 + sprite_get_width(c1_sprite)/2, d_y + gap, checkName(combo[i][1][0], combo));
		draw_text(c_x2 + sprite_get_width(c2_sprite)/2, d_y + gap, checkName(combo[i][1][1], combo));
	}
	d_y += string_height("Dummy Text");
	d_y += sprite_get_height(d_sprite) + sprite_get_height(d_sprite)/2;
}