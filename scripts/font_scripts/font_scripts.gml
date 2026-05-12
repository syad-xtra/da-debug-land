// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smallCenteredText(){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_small);
}

function largeCenteredText(){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_large);
}

function smallLeftText(){
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_small);
}